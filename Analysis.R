#1)Data Collection
#Load dataset
MauForest=read.csv("C:\\Users\\T2Gic\\Downloads\\Project on ENV2001, STA and Differential Equations\\Mau Forest.csv")
head(MauForest)

#Understand dataset
str(MauForest)

#2) Clean dataset 
#a)Count duplicate rows, outliers and missing values  

#i)Duplicate rows
sum(duplicated(MauForest))

#ii)Outliers
#Check structure of dataset
str(MauForest) #Exclude Year column in IQR Method

# Select numeric columns EXCEPT Year
numeric_cols <- names(MauForest)[sapply(MauForest, is.numeric)]
numeric_cols <- numeric_cols[numeric_cols != "Year"]

#Use IQR Method to count outliers
for (col in numeric_cols) {
  
  Q1 <- quantile(MauForest[[col]], 0.25, na.rm = TRUE)
  Q3 <- quantile(MauForest[[col]], 0.75, na.rm = TRUE)
  IQR_val <- IQR(MauForest[[col]], na.rm = TRUE)
  
  lower <- Q1 - 1.5 * IQR_val
  upper <- Q3 + 1.5 * IQR_val
  
  outliers <- MauForest[[col]][
    !is.na(MauForest[[col]]) &
      (MauForest[[col]] < lower | MauForest[[col]] > upper)
  ]
  
  cat(col, ":", length(outliers), "outliers\n")
}

#iii) Missing Values
colSums(is.na(MauForest)) #Many missing values in Population and Forest_Loss_ha


#b)Handle duplicate rows, outliers and missing values
#i)Duplicate rows - Remove the duplicates 
MauForest <- MauForest[!duplicated(MauForest), ]

#AFTER
sum(duplicated(MauForest))

#ii)Outliers - Cap outliers for Forest Loss only
for (col in "Forest_Loss_ha") {
  MauForest[[col]] <- ifelse(
    MauForest[[col]] > upper, upper,
    ifelse(MauForest[[col]] < lower, lower, MauForest[[col]])
  )
  
  # AFTER
  outliers_after <- MauForest[[col]][
    MauForest[[col]] < lower | MauForest[[col]] > upper
  ]
  
  cat("Outliers AFTER -", col, ":", length(outliers_after), "\n")
}

#iii) Missing Values - Replace missing values with median
for (col in numeric_cols) {
  
  MauForest[[col]][is.na(MauForest[[col]])] <- 
    median(MauForest[[col]], na.rm = TRUE)
  
  
  #AFTER
  missing_after <- sum(is.na(MauForest[[col]]))
  
  cat("Missing AFTER -", col, ":", missing_after, "\n")
  
}

#Standard deviation
sd(MauForest$Population)
sd(MauForest$Forest_Loss_ha)

#Check correlation
cor(MauForest$Population, MauForest$Forest_Loss_ha)
#The correlation between population and forest loss was found to be very weak (r = 0.00849), indicating that population alone does not strongly explain variations in forest loss in Mau Forest. This suggests that other factors such as agricultural expansion and settlement growth may play a more significant role.

#Correlation Analysis of all variables
cor_matrix <- cor(
  MauForest[, c(
    "Forest_Loss_ha",
    "Population",
    "Agricultural_Expansion_ha",
    "Settlement_Expansion_ha",
    "Year"
  )]
)
cor_matrix

#3.Visualizations
# Define where to save folder for Visualizations
folder_path <- "C:\\Users\\T2Gic\\Downloads\\Project on ENV2001, STA and Differential Equations\\Images"

# Create folder 
dir.create(folder_path, recursive = TRUE, showWarnings = FALSE)

# Scatter plot with a regression (trend) line
png(file.path(folder_path, "population_vs_forest_loss.png"))
plot(
  MauForest$Population,
  MauForest$Forest_Loss_ha,
  main = "Population vs Forest Loss in Mau Forest",
  xlab = "Population",
  ylab = "Forest Loss (ha)",
  col = "purple"
)
abline(lm(Forest_Loss_ha ~ Population, data = MauForest), col = "green")
dev.off()

# Line graph(Time Series Plot)
# Forest Loss Over Time
png(file.path(folder_path, "forest_loss_over_time.png"))
plot(
  MauForest$Year,
  MauForest$Forest_Loss_ha,
  type = "l",
  col = "darkgreen",
  main = "Forest Loss Over Time",
  xlab = "Year",
  ylab = "Forest Loss (ha)"
)
dev.off()

#Scatter plot (bivariate scatter diagram)
# Agriculture vs forest loss
png(file.path(folder_path, "agricultural_expansion_vs_forest_loss.png"))
plot(
  MauForest$Agricultural_Expansion_ha,
  MauForest$Forest_Loss_ha,
  main = "Agriculture vs Forest Loss",
  xlab = "Agricultural Expansion",
  ylab = "Forest Loss",
  col = "red"
)
dev.off()

#4)Model building
#Multiple Linear Regression model
# Install and Load package
install.packages("caret")
library(caret)

# Set seed for reproducibility
set.seed(123)

# Split data: 80% training, 20% testing
train_index <- createDataPartition(
  MauForest$Forest_Loss_ha,
  p = 0.8,
  list = FALSE
)

train_data <- MauForest[train_index, ]
test_data  <- MauForest[-train_index, ]

# Train model
model <- lm(
  Forest_Loss_ha ~ Population +
    Agricultural_Expansion_ha +
    Settlement_Expansion_ha +
    Population_Growth_.,
  data = train_data
)

# Model summary
summary(model)

# Predictions on test set
predictions <- predict(model, newdata = test_data)

# Evaluation metrics
rmse <- sqrt(mean((test_data$Forest_Loss_ha - predictions)^2))
mae  <- mean(abs(test_data$Forest_Loss_ha - predictions))
r2   <- cor(test_data$Forest_Loss_ha, predictions)^2

cat("RMSE:", rmse, "\n")
cat("MAE :", mae, "\n")
cat("R²  :", r2, "\n")

#Future improvements
#ii)Machine Learning Modeling
#Random Forest

#iii)Mathematical Modeling
#Differential Equations
#Population Growth Simulation
year <- 0:50
P0 <- 100000
r <- 0.03

population <- P0*exp(r*year)

plot(year,
     population,
     type="l",
     main="Population Growth in 50 years",
     xlab="Year",
     ylab="Population",
     col="darkgreen",
     lwd=2) 

# Forest Loss
k <- 0.001

forest_loss <- (k*P0/r)*exp(r*year)

plot(year,
     forest_loss,
     type="l",
     main="Forest Loss in 50 years",
     xlab="Year",
     ylab="Forest Loss",
     col="darkgreen",
     lwd=2)