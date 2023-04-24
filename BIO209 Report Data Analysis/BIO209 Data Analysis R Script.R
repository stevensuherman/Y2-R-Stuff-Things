# Importing Data to R
Exp1 <- read.table("Student number 153 Experiment 1.txt", header = TRUE) # The following 2 lines reads the uploaded data and creates a data frame within the R environment
Exp2 <- read.table("Student number 153 Experiment 2.txt", header = TRUE)
# Converting the variables of Experiment 1, sex and treatment, from characters to factors (or categorical/grouping variable)
# Both variables sex and treatment are not continuous
Exp1$treatment <- as.factor(Exp1$treatment)
Exp1$sex <- as.factor(Exp1$sex)
# The str command are used to check the data structures
str(Exp1)
str(Exp2)

# Experiment 1
# Checking/exploring Exp1 variable and distribution (continuous)
hist(Exp1$reaction_time_ms) # Data of Exp1 fit for Two way ANOVA
# Plotting Experiment 1 data as boxplots
# Experiment 1 = Effect of Gibbernium to the reaction times of Female and Male Athletes (compared to control)
boxplot(Exp1$reaction_time_ms~Exp1$treatment*Exp1$sex,
        ylab = "Reaction Time (ms)",
        xlab = "Treatments",
        col = c("Orange", "Orange", "steelblue", "steelblue"),
        ylim = c(0, 250),
        xaxt = "n") # Included with the boxplot cmd are properties of the boxplots: colour, labels, axes, also to remove the 'default' x-axis, see below
# I also added colour to highlight different groups in the experiment, see below
axis(side=1, at=c(1:4), labels=c("Control", "Drug", "Control", "Drug")) # This line replaces the 'default' x-axis with a new one that's neater
legend("topright", 
       legend = c("Female", "Male"),
       col = c("Orange", "Steelblue"),
       pch = 20) # This cmd adds a small legend for the boxplot to indicate what the colours represent

# Analysing the data from Experiment 1
# Two-way Anova (More than one group & two independent variables: Treatment & Sex)
# Anova test will analyse the differences between means of the groups in Exp1
Exp1.twoway.anova <- aov(reaction_time_ms~treatment*sex, data = Exp1)
anova(Exp1.twoway.anova) # These cmds will perform an Anova test, results found in the console
# Tukey Test (Differences between groups)
# Tukey test will analyse possible pairs of means, 'showing' which differences are significant
TukeyHSD(Exp1.twoway.anova)

# Experiment 2, shown as barplot
Exp2.matrix <- as.matrix(Exp2, ncol = 3, nrow = 2, byrow = FALSE) # This line converts the data for Exp2 into a matrix
rownames(Exp2.matrix) <- c("Control", "Drug Treatment")
colnames(Exp2.matrix) <- c("Decrease", "No Change", "Increase") # Changes the column and row labels
barplot(Exp2.matrix, beside = TRUE,
        ylim = c(0, 350),
        ylab = "Number of People",
        xlab = "Effects on Blood Pressure",
        col = c("Cornflowerblue", "brown2"),
        legend.text = rownames(Exp2.matrix)) # Similar to Exp1 boxplot
# However, the above code produce a bar chart that represents two groups with a big difference in sample size, not very useful for comparison
# The code below creates a new variable, Exp2.freq.plot, with an adjusted value (proportion), number of people with differing blood pressure measurements divided by the total number of people within the group 
# Also similar to previous plots, but this time with proportion instead of raw number
Exp2.freq.plot <- Exp2.matrix/rowSums(Exp2.matrix)
barplot(Exp2.freq.plot, beside = TRUE,
        ylim = c(0, 1),
        ylab = "Proportion",
        xlab = "Effects on Blood Pressure",
        col = c("Cornflowerblue", "brown2"),
        legend.text = TRUE,
        args.legend = list(x = "topright",
                           inset = c(0,0))) # Without the legend code, the legend will partially block the chart

# Chi Square Test for Experiment 2
# This test will show if drug treatments are related to blood pressure
chisq.test(Exp2.matrix)

#R version 4.2.2
#Script written by Stephanus Steven, QMUL
#Last updated: 03:55 Wednesday 14/12/2022


