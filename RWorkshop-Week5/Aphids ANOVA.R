# Data for Aphids Longevity when infected by H. defensa
Aphids <- read.table("Aphid_longevity_A06_405.txt", header = TRUE)
str(Aphids)
Aphids$subline <- as.factor(Aphids$subline)

# Boxplot of Aphids Longevity and the H. defensa strain 
boxplot(Aphids$age.days ~ Aphids$subline)

# ANOVA

aphids.anova <- aov(Aphids$age.days ~ Aphids$subline)
summary(aphids.anova)

# Null = There is no sig.effect in H.defensa infection to Aphids longevity
# Alt = There is a sig.effect in H.defensa infection to Aphids longevity


