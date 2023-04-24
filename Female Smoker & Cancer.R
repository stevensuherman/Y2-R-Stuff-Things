mat2.data <- c(7,19,9,6,0,12,10,6,0,0)

mat2 <- matrix(mat2.data, ncol = 5, byrow = 2)
colnames(mat2) <- c("1-4 Cigs", "5-14 Cigs", "15-24 Cigs", "25-49 Cigs", "50 Cigs or more")
rownames(mat2) <- c("Patients with Lung Carcinoma", "Control Patients with Diseases other than Cancer")

barplot(mat2, beside = TRUE,
        ylim = c(0,20),
        ylab = "Number of Patients",
        xlab = "Number of Cigarettes Smoked Daily",
        main = "Female Smokers with Lung Carcinoma",
        legend.text = rownames(mat2),
        )

chisq.test(mat2)