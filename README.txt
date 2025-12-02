### This is the project for ECON 220D assignments, which is trying to 
understanding the effects of fiscal policy on macroeconomic situations.  

## The main programming language for coding is python.

##  The project is divided into two parts

The first part is summarizing the key features of fiscal policy and 
macroeconomic variables by running reduced-form V(ector) A(uto)R(egression) and
extending Bayesian VAR, plotting reduced-form I(mpulse) R(educed) F(unction), 
and testing for stationarity and structural break. 


The second part of the project focuses on identifying fiscal policy shocks 
and evaluating their causal effects on economic stabilization. In addition, 
I aim to compare fiscal and monetary policies in terms of policymakers’ 
preferences and the relative effectiveness of each in achieving specific 
economic stabilization goals. In particular, I want to examine how these 
policies differ across economic cycles—such as normal periods, expansions, and 
recessions—and how they may be implemented individually or jointly to 
address various macroeconomic objectives.

Here is the description of the replication files.
The original datasets "monthly.csv", "quarterly.csv", and "CPI.xlsx" are all
located in the 'Data' folder. The "monthly.csv" and "quarterly.csv" were 
downloaded from 'Federal Reserve Bank of St. Louis' (FRED). Detailed 
description of these datasets can be found in "data_description". "CPI.xlsl" 
was obtained from "U.S. Bureau of Labor Statistics" and contains the Consumer 
Price Index (CPI) for all urban consumers.

The cleaned dataset "data.csv" in the "Data" folder can be replicated by 
running "Data_cleaning.ipynb" in the "Code" folder. The "data.csv" contains 
all quarterly (adjusted montly to quarterly by taking averages) fiscal policy 
-related  such as "Government tax" and "Government spending", monetary policy
-related such as "Federal Funds Rate(FFR)", and macroeconomic variables 
"Real GDP(RGDP)", "Consumption", "Unemplyment Rate", and "CPI". Note that, 
all nominal variables have been adjusted to 2017 constant prices for 
consistency. 

The plots "level_plot.png" and "gr.png", which plots the variables of
interest in levels and growth rate, in the "Result" folder can be obtained by 
running "Prelim_Analysis.ipynb" in the "Code" folder. Both of the VAR results
"VAR_summary.txt" and "BVAR_summary.txt" and IRF plots "irf_var", "irf_cum_var",
and "irf_boot", located in the "Result" folder, can be replicated by running 
the same file "Prelim_Analysis". 
