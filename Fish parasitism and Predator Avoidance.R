#mat1.data is the "Fish" Data
mat1.data <- c(33,24,17,26)

#This is the matrix of the data
mat1 <- matrix(mat1.data,
               ncol = 2,
               byrow = 2)
rownames(mat1) <- c("Avoidance behaviour", "No Avoidance Behaviour")
colnames(mat1) <- c("Unparasitised", "Parasitised")

#This is the barplot of the data
barplot(mat1, beside = TRUE, ylim = c(0,40),
        main = "Avoidance Behaviours on Parasitised and Unparasitised Fish",
        ylab = "Number of Fish Showing Behaviour",
        xlab = "Fish Infectious Status",
        legend.text = rownames(mat1),
        args.legend = list(x = "topright"),
        )

#This is the chi square test of the fish data
chisq.test(mat1)

