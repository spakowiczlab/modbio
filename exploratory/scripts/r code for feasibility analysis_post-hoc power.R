

## to calculate post-hoc power for porportion test
## applied in feasibility analysis of a pilot study
install.packages("MKpower")
library(MKpower)
power.prop1.test(n = 16, 
                 p1 = 0.75, 
                 p0 = 0.4, 
                 sig.level = 0.05,
                 power = NULL, 
                 alternative = c("greater"),
                 cont.corr = TRUE)

