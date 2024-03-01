#========= Aim 1 ===========

# Based on pwr calculation
mice.per.group <- 8

# Gavage + control, PD1 and control
groups <- 4

# Young and old
cohorts <- 2

# Blautia, Oscillibacter, NOT B+O
hypotheses <- 2

# Calculate the number of mice
n.mice <- mice.per.group * groups  * hypotheses

n.mice

# Costs
young.cost.per.mouse <- 30

old.cost.per.mouse <- 300

(n.mice * young.cost.per.mouse) + (n.mice * old.cost.per.mouse)

#========= Aim 2 ===========
# Based on pwr calculation
mice.per.group <- 6

# Gavage + control, PD1 and control
groups <- 4

# Young and old
cohorts <- 2

# Blautia, Oscillibacter, NOT B+O
hypotheses <- 2

# Calculate the number of mice
n.mice <- mice.per.group * groups  * hypotheses

n.mice

# Costs
young.cost.per.mouse <- 30

old.cost.per.mouse <- 300

cost.young <- (n.mice * young.cost.per.mouse)
cost.old <- (n.mice * old.cost.per.mouse)


