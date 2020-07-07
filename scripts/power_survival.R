install.packages("powerSurvEpi")
library(powerSurvEpi)

ssize.stratify(
  power = 0.8, 
  timeUnit = 5, 
  gVec, 
  PVec, 
  HR, 
  lambda0Vec, 
  alpha = 0.05, 
  verbose = TRUE)


res.power <- power.stratify(
  n = 146, 
  timeUnit = 1.25, 
  gVec = c(0.5, 0.5),
  PVec = c(0.5, 0.5), 
  HR = 1 / 1.91, 
  lambda0Vec = c(2.303, 1.139),
  power.ini = 0.8, 
  power.low = 0.001, 
  power.upp = 0.999,
  alpha = 0.05, 
  verbose = TRUE
)

res.power <- power.stratify(
  n = 50, 
  timeUnit = 1.25, 
  gVec = c(0.5, 0.5),
  PVec = c(0.5, 0.5), 
  HR = 1 / 2.5, 
  lambda0Vec = c(2.303, 1.139),
  power.ini = 0.8, 
  power.low = 0.001, 
  power.upp = 0.999,
  alpha = 0.05, 
  verbose = TRUE
)

num.events <- seq(1:150)

power <- vector(length = length(num.events))
for (e in num.events) {
  power[e] <- powerCT.default0(k = 2,
                               m = e,
                               RR = 2.5,
                               alpha = 0.05)
}

power %>%
  data.frame(num.events.observed = num.events,
             power = .) %>%
  ggplot(aes(num.events.observed, power)) +
  geom_line() +
  theme_bw()
