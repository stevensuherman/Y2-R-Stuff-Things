# Importing Diopsids.csv

read.csv("Diopsids.csv")

Data1 <- read.csv("Diopsids.csv")

Data1

# Boxplots

# This boxplots shows the Wingspan of Male and Female Diopsids
boxplot(Wing ~ Sex, Data1, 
        xlab = "Diopsids Sex",
        ylab = "Wingspan (length in cm)",
        col = c("blue", "orange"),
        main = "Wingspan of Male and Female Diopsids")

# This boxplots shows the Eyespan of Male and Female Diopsids        
boxplot(Eyespan ~ Sex, Data1,
        xlab = "Diopsids Sex",
        ylab = "Eyespan",
        col = c("blue", "orange"),
        main = "Eyespan of Male and Femaloe Diopsids")

# This boxplots shows the Thorax Length of Male and Female Diopsids
boxplot(Thorax ~ Sex, Data1,
        ylab = "Thorax length",
        xlab = "Diopsid Sex",
        col = c("steelblue", "orange"),
        main = "Thorax Length of Male and Female Diopsids")


# Scatter Plot
symbols <- c(15, 16)

plot(Data1$Thorax, Data1$Wing,
     type = "p",
     xlab = "Thorax Length",
     ylab = "Wingspan",
     main = "Relation between Thorax Length and Wingspan of Diopsids",
     pch = 1,
     col = "blue")








