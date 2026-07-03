# A Simulated Study Of How Population Growth Affects Forest Loss in Mau Forest:Kenya
## Overview
* This project explores how population growth affects forest loss in the Mau Forest, Kenya.
*  Using a simulated dataset, the study applies multiple linear regression, differential equations, and data visualization in R to analyze relationships between population dynamics and environmental degradation.
  
### Human Settlement in Mau Forest
<img width="602" height="376" alt="image" src="https://github.com/user-attachments/assets/c9768259-a702-4592-832f-ab4965746b1a" />

## Objectives
* To create a project from my Environment assignment.
* To determine the impact of population growth on forest loss in Mau Forest,Narok County:Kenya.
* To create a regression model to show the impact.
* To find out how differential equations is used in real-world problems.
* To create visualisations based on findings using R.

## Background on the Project
### Map of Mau Forest in Kenya
<img width="1239" height="1280" alt="image" src="https://github.com/user-attachments/assets/6a7242de-3d35-422e-980b-dabfab9e0525" />

* I really struggled, still do, learning differential equations.
* I wanted to see how I can apply differential equations to projects since Calculus is a key Mathematical Foundation in Data Science.
* I recently did an assignment for my Sustainable Resource Management class (ENV2001) titled 'IMPACT OF POPULATION GROWTH AND HUMAN-INDUCED DEVELOPMENT ACTIVITIES ON ENVIRONMENTAL DEGRADATION:SUSTAINABLE APPROACHES AGAINST THE VICE GIVING RELEVANT EXAMPLES FROM MY COUNTRY'.
* The assignment focused on:Population growth, Human activities and Environmental degradation. 
* I became excited on combining Mathematics, Environmental Studies and Statisticss.
* This is also my first math centered project so I am very excited.

## Dataset
<img width="839" height="137" alt="image" src="https://github.com/user-attachments/assets/a8a57245-a44e-46ac-94f4-f42c35e3d072" />

* The dataset "Mau Forest" is simulated to represent:
    * Population growth - Number of people
    * Agricultural expansion - Land converted to agriculture
    * Settlement expansion - Growth of settlements
    * Forest loss - Area of forest lost (hectares)
    * Year - Time period of observation
    * Population growth % - Percentage increase in population
      
 * Due to lack of a complete real-world dataset, simulation was used to approximate realistic patterns.
 
## Clean the dataset 
* Mau Forest dataset was cleaned to ensure accuracy and reliability before analysis.
* Key areas looked into were Duplicate Rows, Outliers and Missing Values.
* A total of 5000 duplicate rows were identified and removed.
* After removal, no duplicate rows remained.
* Outliers were detected using the Interquartile Range (IQR) method.
* The number of outliers identified in each column were as follows:
     * Population: 1976
     * Population Growth: 1579
     * Forest Loss: 1925
     * Agricultural Expansion: 1580
     * Settlement Expansion: 1636
* Outliers were only handled for the Forest Loss variable by winsorization because it is the dependent variable in the model, and extreme values could significantly affect the regression results.
* Other variables were left unchanged to preserve natural variation in the data.
* Missing values were found in:
     * Population: 6789
     * Forest Loss: 11229
* Missing values in each column were filled using the median value of that specific column because the dataset contained outliers and was likely skewed.
* The median is less affected by extreme values and provides a more robust estimate of the central value..
* No missing values remained in the dataset after cleaning.

## Multiple Linear Regression Model
### Summary of the Model.
### After splitting the dataset into training set and testing set
<img width="428" height="260" alt="image" src="https://github.com/user-attachments/assets/d0fd5d16-161d-4cab-bf6b-e56146ef91a3" />

  * A multiple linear regression model was used to examine how population growth, agricultural expansion, and settlement expansion affect forest loss in the Mau Forest.
  * The model is given by: F = 3329 + 7.213×10−6P + 8.811×10−4A + 1.102×10−3S
  * Where:
      *  F = Forest Loss
      *  P = Population
      *  A = Agricultural Expansion
      *  S = Settlement Expansion
  * Population has a statistically significant but very small effect on forest loss.
  * Agricultural expansion and settlement expansion are not statistically
  significant in this modeL.
  * The model has a very low R^2, meaning it explains very little variation in forest loss.
  * This suggests that forest loss is influenced by other factors not included in the model

## Differential Equations
* Differential Equations was  used to represent forest loss as a dynamic process changing over time showing how changes in human activities influence the rate of forest depletion..
* The model was written as: dF/dt= 7.213×10−6P + 8.811×10−4A + 1.102×10−3S
* Where:
    * F = Forest Loss
    * P = Population
    * A = Agricultural Expansion
    * S = Settlement Expansion
    * dF/dt = rate of change of forest loss over time

* The equation dF/dt= 7.213×10−6P + 8.811×10−4A + 1.102×10−3S shows that forest loss changes depending on population, agricultural expansion, and settlement growth
  
* Assuming the variables remain constant: dF/dt=k
    * k = constant rate of forest loss
* Integrating gives: F(t) = kt + C
    * C = initial forest condition

## Visualizations
### 1.Population vs Forest Loss 
### (Scatter Plot with a regression (trend) line)
<img width="480" height="480" alt="population_vs_forest_loss" src="https://github.com/user-attachments/assets/d3d24341-fd3f-467b-9dcb-5cd1008bbaf0" />

* This scatter plot shows the relationship between population and forest loss in the Mau Forest.
* Each point represents a combination of population size and forest loss.
* The purple points show a wide spread, indicating high variability.
* The green line represents the line of best fit (regression line). 
* The points are widely scattered with no clear pattern.
* The regression line is almost flat, showing very little change in forest loss as population increases
* This suggests that population has a very weak relationship with forest loss
* The graph indicates that population growth alone does not strongly explain forest loss in the Mau Forest, as there is no clear trend between the two variables.

### 2.Forest Loss Over Time 
### (Line graph(Time Series Plot))
<img width="480" height="480" alt="forest_loss_over_time" src="https://github.com/user-attachments/assets/0f420123-6394-4711-8eb1-3f43a721c56c" />

* This graph shows how forest loss changes over time in the Mau Forest.
* The x-axis represents years.
* The y-axis represents forest loss (in hectares).
* The green line connects forest loss values across different years.
* The graph appears very dense because of many overlapping data points.
* There is no clear upward or downward trend visible.
* Forest loss values vary widely over time
* Forest loss does not show a clear consistent trend over the years, indicating that changes in forest loss are irregular and influenced by multiple factors.

### 3. Agriculture vs Forest Loss 
### (Scatter Plot(bivariate scatter diagram))
<img width="480" height="480" alt="agricultural_expansion_vs_forest_loss" src="https://github.com/user-attachments/assets/576cd760-d219-48a7-9475-fd2b2f3a4fe2" />

* This scatter plot shows the relationship between agricultural expansion and forest loss.
* Each red point represents a combination of Agricultural expansion and Forest loss.
* The points are widely spread across the graph.
* There is no clear linear pattern between agricultural expansion and forest loss
* The data is highly scattered, indicating weak or inconsistent relationship.
* The graph suggests that agricultural expansion alone does not strongly explain forest loss in the Mau Forest.

  ## Conclusion
* This study shows that population growth alone does not strongly explain forest loss in the Mau Forest.
* Using 3 more variables in the regression model still lead to a low predictive power.
* After splitting the dataset into training and testing sets,little change is seen, no variable significantly predicts forest loss.

## Limitations
* Regression Model has low explanatory power (R²)
* Low Correlation between variables
* Dataset is simulated, not real-world.

## Current Improvements
* Checked relevance of my dataset by comparing it with my friend's Environment Studies assignment, used the part on on Deforestation as a cause of Environmental Degradation.
* Took more time to understand the dataset and the cleaning process.
* Created visualisations before model building instead of after.
* Checked correlations using all variables instead of just one variable.
* Dataset is split into training and testing sets before building the model.
* The model is trained on the training data and evaluated on the testing data for better analysis.
* Created a project folder in R for Analysis file.
* Made changes to mu Analysis file in the project folder and pushed the changes to Github.

## Future Work
* Use more models such as Random Forest model and compare results.
* Use different types of modeling such as Mathematical Modeling and Statistical Modelling,compare results.
* Consider changing the dataset used or the target variable.
* README file should be in different languages such as Kiswahili and Chinese(Mandarin)
* Have an audio file for the README file.
* Provide a version of the clean dataset.
* Sync Analysis file to Github, make changes easily implemented on Github.
* Be able to change image sizes.
* Write down the skills you have gained in this project.
 
## Attachments
* Images folder containing the 3 visualizations
* Analysis.R file showing my analysis of the simulated Mau Forest dataset.
* Individual Assignment docx showing IMPACT OF POPULATION GROWTH AND HUMAN-INDUCED DEVELOPMENT ACTIVITIES ON ENVIRONMENTAL DEGRADATION:SUSTAINABLE APPROACHES AGAINST THE VICE GIVING RELEVANT EXAMPLES FROM MY COUNTRY



