### BIOST 514 HW2

### Q4 P
### part a
### plot a boxplot to show distribution of the men’s body weights (in pounds)
jpeg("~/Desktop/UW MS Biostat/BIOST Fall 2021/Biost 514/R work/HW 2/HW 2jpg_weight.jpg", width=600,height=400)
weight <- bodyfat[,c("weight")]
boxplot(bodyfat$weight, ylab="Weight(pounds)")
dev.off()

### part b
### plot a boxplot to show distribution of the men’s heights (in inches)
jpeg("~/Desktop/UW MS Biostat/BIOST Fall 2021/Biost 514/R work/HW 2/HW 2jpg_height.jpg", width=600,height=400)
height <- bodyfat[,c("height")]
boxplot(bodyfat$height, ylab="Height(inches)")
dev.off()

### calculate mean/median of height/weight
mean(weight)
median(weight)
mean(height)
median(height)

### generate the mode of height/weight
getmode <- function(v) {
        uniqv <- unique(v)
        uniqv[which.max(tabulate(match(v, uniqv)))]
}
w <- bodyfat[,c("weight")]
result <- getmode(w)
print(result)

h <- bodyfat[,c("height")]
result <- getmode(h)
print(result)

### create matrix with 3 rows
tab <- matrix(c(178.92,70.15,176.50,70.00,184.25,71.50), nrow = 3, byrow=TRUE)

### define column names and row names of matrix
colnames(tab) <- c('Weight', 'Height')
rownames(tab) <- c('Mean', 'Median', 'Mode')
### convert matrix to table 
tab <- as.table(tab)

### view table 
tab