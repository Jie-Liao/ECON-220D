# set up
library(dplyr)
library(tidyr)
library(BVAR)

mainpath <- file.path("/Users/jie/Desktop/ECON-220D")
datapath <- file.path(mainpath, 'Data')

df <- read.csv(file.path(datapath, "data.csv"))

df <- df %>%
  arrange(Date) %>%  
  mutate(
    Net_Taxes_gr       = 100 * (Net_Taxes       / lag(Net_Taxes)       - 1),
    Gov_Expenditure_gr = 100 * (Gov_Expenditure / lag(Gov_Expenditure) - 1),
    RGDP_gr            = 100 * (RGDP            / lag(RGDP)            - 1),
    Per_Consumption_gr = 100 * (Per_Consumption / lag(Per_Consumption) - 1)
  )


df_matrix <- df %>%
  select(RGDP_gr, Per_Consumption_gr, Gov_Expenditure_gr, Net_Taxes_gr) %>%
  drop_na()


fit <- bvar_minnesota(y = df_matrix, p = 4, 
                     bayes_spec = set_bvar(sigma = apply(df_matrix, 2, sd), lambda = 0.2, delta = rep(0,4), eps = 1e-4), 
                     include_mean = TRUE)

print(fit)

fit$coefficients
