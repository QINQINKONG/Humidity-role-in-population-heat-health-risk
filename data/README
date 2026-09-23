# Data

This directory contains processed and intermediate data used to reproduce the analyses and figures in *Humidity's role in population heat-health risk*.

## Files

### `GHSI_MAE.nc`

Mean absolute error (MAE) of daily heatstroke prediction for each prefecture (`pf`) across a range of humidity weights (`beta`) for both the outdoor and indoor (`exposure`) formulations of the General Heat Stress Index (GHSI). GHSI is calculated at the hourly scale and aggregated to daily means. MAE is averaged across the validation periods of leave-one-year-out cross-validation during 2010–2019.

### `dmax_GHSI_MAE.nc`

Same as `GHSI_MAE.nc`, except that daily maximum GHSI is used as the exposure metric instead of daily mean GHSI.

### `dmin_GHSI_MAE.nc`

Same as `GHSI_MAE.nc`, except that daily minimum GHSI is used as the exposure metric instead of daily mean GHSI.

### `HSI_MAE.nc`

Mean absolute error (MAE) of daily heatstroke prediction for each prefecture (`pf`) using existing heat stress indices (`HSI`). MAE is averaged across the validation periods of leave-one-year-out cross-validation during 2010–2019.

Heat stress index abbreviations: `Ta`, air temperature; `WBGT`, wet-bulb globe temperature; `WBGTin`, indoor WBGT; `UTCI`, Universal Thermal Climate Index; `UTCIin`, indoor UTCI; `Hx`, Humidex; `HI`, heat index; `Tw`, wet-bulb temperature; `sWBGT`, simplified WBGT; `Ts`, lethal heat stress temperature.

### `GHSI_MAE_2020-2024.nc`

Mean absolute error (MAE) of daily heatstroke prediction for each prefecture (`pf`) across a range of humidity weights (`beta`) for both the outdoor and indoor (`exposure`) formulations of GHSI during 2020–2024. The prediction models are trained using data from 2010–2019 and evaluated out of sample during 2020–2024.

### `HSI_MAE_2020-2024.nc`

Mean absolute error (MAE) of daily heatstroke prediction for each prefecture (`pf`) using existing heat stress indices (`HSI`) during 2020–2024. The prediction models are trained using data from 2010–2019 and evaluated out of sample during 2020–2024.

Heat stress index abbreviations: `Ta`, air temperature; `WBGT`, wet-bulb globe temperature; `WBGTin`, indoor WBGT; `UTCI`, Universal Thermal Climate Index; `UTCIin`, indoor UTCI; `Hx`, Humidex; `HI`, heat index; `Tw`, wet-bulb temperature; `sWBGT`, simplified WBGT; `Ts`, lethal heat stress temperature.

### `linearized_HSI_MAE.nc`

Mean absolute error (MAE) of daily heatstroke prediction for each prefecture (`pf`) based on linearized approximations of existing heat stress indices (`HSI`). MAE is averaged across the validation periods of leave-one-year-out cross-validation during 2010–2019.

Heat stress index abbreviations: `HI`, heat index; `Tw`, wet-bulb temperature; `Ts`, lethal heat stress temperature; `UTCIin`, indoor UTCI; `WBGTin`, indoor WBGT.

### `Country_level_HSI_effective_beta.nc`

Country-level effective humidity weights (`beta`) of existing heat stress indices (`HSI`), calculated using the population-weighted summer-mean climatology of Japan.

Heat stress index abbreviations: `HI`, heat index; `Ts`, lethal heat stress temperature; `Tw`, wet-bulb temperature; `UTCIin`, indoor UTCI; `UTCI`, outdoor UTCI; `WBGTin`, indoor WBGT; `WBGT`, outdoor WBGT; `Hx`, Humidex; `sWBGT`, simplified WBGT.

### `Prefecture_level_HSI_effective_beta.nc`

Prefecture-level (`pf`) effective humidity weights (`beta`) of existing heat stress indices (`HSI`), calculated using the summer-mean climatology of each prefecture.

Heat stress index abbreviations: `HI`, heat index; `Ts`, lethal heat stress temperature; `Tw`, wet-bulb temperature; `UTCIin`, indoor UTCI; `UTCI`, outdoor UTCI; `WBGTin`, indoor WBGT; `WBGT`, outdoor WBGT; `Hx`, Humidex; `sWBGT`, simplified WBGT.

### `Prefecture_summer_average_temp.nc`

Summer-mean (June–September) air temperature at the capital city of each of Japan's 47 prefectures during 2010–2019, derived from ERA5.

### `corr.nc`

Pearson correlation coefficients between daily mean air temperature and vapor pressure during the local warm season (June–September in the Northern Hemisphere and December–March in the Southern Hemisphere) during 2010–2019, derived from ERA5.

### `heatstroke_2010_2019.npy`

Daily heatstroke-related emergency ambulance dispatch counts across Japan's 47 prefectures during June–September 2010–2019. This processed dataset was prepared by the authors from publicly available data provided by the Fire and Disaster Management Agency (FDMA) of Japan.

### `tas_daily_2010_2019.npy`

Daily mean air temperature at the capital city of each of Japan's 47 prefectures during June–September 2010–2019, derived from ERA5.

## Data sources and terms of use

The files in this directory are processed or intermediate research data generated for the analyses in this study. Some files are derived from publicly available third-party datasets. The source datasets remain subject to the terms and attribution requirements of their respective providers.

### Heatstroke-related emergency ambulance dispatch data

Heatstroke-related emergency ambulance dispatch data were obtained from the Fire and Disaster Management Agency (FDMA) of Japan:

https://www.fdma.go.jp/disaster/heatstroke/post4.html

The processed heatstroke data included in this repository were prepared by the authors from the publicly available FDMA data. The original FDMA content is subject to the applicable FDMA terms of use.

FDMA terms of use:

https://www.fdma.go.jp/about/others/post3.html

### ERA5 meteorological data

Meteorological data used to derive the processed climate and heat-stress datasets were obtained from the Copernicus Climate Data Store (CDS). ERA5 hourly data on single levels are available at:

https://doi.org/10.24381/cds.adbb2d47

ERA5 data and derived products are subject to the applicable Copernicus/ECMWF terms and licences associated with the source dataset.

### ERA5-HEAT data

Mean radiant temperature used in the calculation of relevant heat stress indices was obtained from the ERA5-HEAT dataset:

https://doi.org/10.24381/cds.553b7518

ERA5-HEAT data and derived products are subject to the applicable Copernicus/ECMWF terms and licences associated with the source dataset.

## Licensing

The processed and intermediate data files in this directory should not be interpreted as being licensed under the GPL-3.0 software licence solely by virtue of their inclusion in this repository. Data derived from third-party sources remain subject to the applicable terms and attribution requirements of the respective source-data providers.

The GPL-3.0 licence in the root of this repository applies to the source code developed by the authors.
