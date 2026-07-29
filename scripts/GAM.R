# Author: Dr. Qiang Guo, The University of Tsukuba, modified by Dr. Qinqin Kong, Stanford University 
# Contact: qiangguo@kz.tsukuba.ac.jp; qqkong@stanford.edu
# Description:
# This script is used to run the GAM model for Japan heatstroke prediction


rm(list=ls())

# Load libraries
library(reticulate)
library(lubridate)
library(MASS)
library(ggplot2)
library(patchwork)
library(mgcv)

np <- import("numpy")

input_dir <- "/scratch/bell/kong97/optimal_metric/Japan/framework/"
output_dir <- "/scratch/bell/kong97/optimal_metric/Japan/results/GAM/"

# Load the input data
# Date time series
date_array_summer <- np$load(paste0(input_dir, "HS_daily_2010-2019.npz"))$f[["date_array_summer"]]  # (1220, 6)
# Social economic data: population number, the proportion of old people, and income
social_economic <- np$load(paste0(input_dir, "HS_daily_2010-2019.npz"))$f[["social_economic"]]  # (47, 3, 1220)
# Heat exposure on the current day
jp_hsi_mean_summer <- np$load(paste0(input_dir, "HS_daily_2010-2019.npz"))$f[["jp_hsi_mean_summer"]]  # (800, 47, 1220) 
# Heat exposure one day before
jp_hsi_mean_summer_1 <- np$load(paste0(input_dir, "HS_daily_2010-2019.npz"))$f[["jp_hsi_mean_summer_1"]]  # (800, 47, 1220) 
# Heat exposure two days before
jp_hsi_mean_summer_2 <- np$load(paste0(input_dir, "HS_daily_2010-2019.npz"))$f[["jp_hsi_mean_summer_2"]]  # (800, 47, 1220) 

# Load the heatstroke data
all_htk <- np$load(paste0(input_dir, "HS_daily_2010-2019.npz"))$f[["all_htk"]]  # (47, 1220)

# Pre-define the array for the predictions
all_prediction <- array(NA, dim=c(800, 10, 1220))

k_sum = 9

# Loop over all prefectures
for (pf in seq(47)) {

  pf_data <- data.frame(
    year = date_array_summer[,1],
    month = date_array_summer[,2],
    day = date_array_summer[,3],
    dow = date_array_summer[,4],
    holiday = date_array_summer[,5],
    dfg = date_array_summer[,6],
    population = social_economic[pf, 1,],
    old_prop = social_economic[pf, 2,] / social_economic[pf, 1,], 
    income = social_economic[pf, 3,],
    heatstroke = all_htk[pf,]
  )

  # Cross-validation
  for (yy in seq(10)){
    vali_idx <- which(date_array_summer[,1] == yy + 2009)
    cali_idx <- which(date_array_summer[, 1] != yy + 2009)

    for (var in seq(800)){
      pf_data$hsi <- jp_hsi_mean_summer[var, pf,]
      pf_data$hsi_1 <- jp_hsi_mean_summer_1[var, pf,]
      pf_data$hsi_2 <- jp_hsi_mean_summer_2[var, pf,]

      # Fit GAM using HSI and lagged HSI terms
      mod_clm = gam(heatstroke ~ s(hsi, k=k_sum)
                    + s(hsi_1, k=k_sum)
                    + s(hsi_2, k=k_sum)
                    + dfg + s(old_prop, k=3) + factor(holiday) + factor(dow)  + offset(log(population)), 
                    data = pf_data[cali_idx,], family = poisson(), method = "REML", na.action = "na.omit")

      # Predict for calibration and validation periods
      all_prediction[var, yy, cali_idx] <- predict(mod_clm, newdata = pf_data[cali_idx,], type = "response")
      all_prediction[var, yy, vali_idx] <- predict(mod_clm, newdata = pf_data[vali_idx,], type = "response")

      print(paste0("Prefecture ", pf, " HSI Year ", yy + 2009, " Var ", var, " Finished."))
    }
  }

  # Save results for each prefecture
  save(all_prediction, file = paste0(output_dir, "prefecture_", pf, ".Rdata"))
}

print("All Finished.")
