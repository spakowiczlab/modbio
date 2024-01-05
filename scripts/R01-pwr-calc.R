library(pwr)


pwr.t.test(n = 8,
           sig.level = 0.05,
           type = c("paired"),
           alternative = "greater",
           d = 1)

mice.per.group <- 6
groups <- 4
cohorts <- 4
hypotheses <- 3

mice.per.group * groups * cohorts * hypotheses

mice.per.group * groups * cohorts

pwr.t.test(n = 6,
           sig.level = 0.05,
           type = c("paired"),
           alternative = "greater",
           d = 1.2)
288+384

