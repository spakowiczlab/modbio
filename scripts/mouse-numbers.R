mice.experiment = 8*4

clusters <- 3
samps.cluster <- 2

supp.microbes <- 3
sexes <- 2
ages <- 2

study <- mice.experiment * clusters * samps.cluster
fu <- supp.microbes * sexes * ages

study + fu
