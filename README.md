# Replication data for "Humidity’s role in population heat-health risk"
This repository contains the scripts, intermediate dataset, and Jupyter Notebooks that can be used to reproduce all figures in the paper "***Humidity’s role in population heat-health risk***" by Kong et al. (2025). There are three folders:

- **./R scripts**: R scripts for heatstroke prediction using Generalized Additive Models (GAMs).

- **./Jupyternotebook**: Jupyter Notebooks for reproducing figures in "Humidity’s role in population heat-health risk" by Kong et al.


- **./data**: dataset needed for running Jupyter notebooks including the following:

  - `GHSI_MAE.nc`
    Mean absolute error (MAE) of daily heatstroke prediction at each prefecture (dim: pf) conditional on a wide range of humidity weight (dim: beta) for both outdoor and indoor (dim: exposure) version of General Heat Stress Index (GHSI). GHSI is first calculated at hourly scale and then aggregated to daily averages. MAE is calculated as an average across the validation periods of a 10-fold cross valiation during 2010-2019
  - `dmax_GHSI_MAE.nc`
    Same as `GHSI_MAE.nc` except that daily maximum GSHI is used for prediction instead of daily averages.

  - `dmin_GHSI_MAE.nc`
    Same as `GHSI_MAE.nc` except that daily minimum GSHI is used for prediction instead of daily averages.

  - `HSI_MAE.nc`
    Mean absolute error (MAE) of daily heatstroke prediction at each prefecture (dim: pf) by existing heat stress indices (dim: HSI). MAE is calculated as an average across the validation periods of a 10-fold cross valiation during 2010-2019. Ta: dry-bulb temperature; WBGT: wet-bulb globe temperature; WBGTin: indoor WBGT; UTCI: universal thermal climate index; Hx: Humidex; HI: heat index; UTCIin: indoor UTCI; Tw: wet-bulb temperature; sWBGT: simplified WBGT; Ts: lethal temperature
    
  - `GHSI_MAE_2020-2024.nc`
    Mean absolute error (MAE) of daily heatstroke prediction at each prefecture (dim: pf) conditional on a wide range of humidity weight (dim: beta) for both outdoor and indoor (dim: exposure) version of General Heat Stress Index (GHSI) during 2020-2024. The prediction model is trained on dataset during 2010-2019.

  - `HSI_MAE_2020-2024.nc`
    Mean absolute error (MAE) of daily heatstroke prediction at each prefecture (dim: pf) by existing heat stress indices (dim: HSI) during 2020-2024. Ta: dry-bulb temperature; WBGT: wet-bulb globe temperature; WBGTin: indoor WBGT; UTCI: universal thermal climate index; Hx: Humidex; HI: heat index; UTCIin: indoor UTCI; Tw: wet-bulb temperature; sWBGT: simplified WBGT; Ts: lethal temperature. The prediction model is trained on dataset during 2010-2019.

  - `linearized_HSI_MAE.nc`
    Mean absolute error (MAE) of daily heatstroke prediction at each prefecture (dim: pf) based on linearized approximations of existing heat stress indices (dim: HSI). MAE is calculated as an average across the validation periods of a 10-fold cross valiation during 2010-2019. HI: heat index; Tw: wet-bulb temperature; Ts: lethal temperature;  UTCIin: indoor UTCI; WBGTin: indoor WBGT

  - `Country_level_HSI_effective_beta.nc`
    Country-level effective beta of existing heat stress indices (dim: HSI) calculated based on population-weighted summer climatology of Japan. HI: heat index; Ts: lethal temperature; Tw: wet-bulb temperature; UTCIin: indoor UTCI; UTCI: outdoor UTCI; WBGTin: indoor WBGT; WBGT: outdoor WBGT; Hx: Humidex, sWBGT: simplified WBGT

  - `Prefecture_level_HSI_effective_beta.nc`
    Prefecture-level (dim: pf) effective beta of existing heat stress indices (dim: HSI) calculated based on population-weighted summer climatology of Japan. HI: heat index; Ts: lethal temperature; Tw: wet-bulb temperature; UTCIin: indoor UTCI; UTCI: outdoor UTCI; WBGTin: indoor WBGT; WBGT: outdoor WBGT; Hx: Humidex, sWBGT: simplified WBGT

  - `Prefecture_summer_average_temp.nc`
    Summer (June-Sep) average temperature at the capital city of each prefecture during 2010-2019

  - `corr.nc`
    Pearson correlation coefficient between summer (June-Sep for NH, and Dec-Mar for SH) average temperature and vapor pressure.
    
  - `heatstroke_2010_2019.npy`
    Daily heatstroke numbers across 47 prefectures during summer (June-Sep) of 2010-2019.
    
  - `tas_daily_2010_2019.npy`
    Daily average temperature across 47 prefectures during summer (June-Sep) of 2010-2019.
    
