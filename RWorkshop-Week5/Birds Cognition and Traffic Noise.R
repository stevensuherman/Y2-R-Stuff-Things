# Data for "The effects of noise on bird cognition"

birds <- read.csv("Osbrink_2021_noise_cognition.csv")
str(birds)
birds$Detour_treatment <- as.factor(birds$Detour_treatment)
birds$Lid_flip_treatment <- as.factor(birds$Lid_flip_treatment)
str(birds)

# Boxplot for Detour Treatment
boxplot(Detour_score ~ Detour_treatment, birds,
        xlab = "Detour Treatment",
        ylab = "Detour Score",
        main = "Birds cognition score in Detour Treatment")

# Boxplot for Lid-Flipping Treatment and Motor Score
boxplot(Motor_score ~ Lid_flip_treatment, birds,
        xlab = "Lid Flip Treatment",
        ylab = "Motor Score",
        main = "Birds' Cognition score in Lid Flip Treatment")

# Boxplot for Coloured Lid Flip Treatment and Colour Score
boxplot(Colour_score ~ Lid_flip_treatment, birds,
        xlab = "Lid Flip Treatment",
        ylab = "Colour score",
        main = "Birds' cognition score in Coloured Lid Flip Treatment")

# T-tests

t.test(Detour_score ~ Detour_treatment, data = birds)
t.test(Motor_score ~ Lid_flip_treatment, data = birds)
t.test(Colour_score ~ Lid_flip_treatment, data = birds)








