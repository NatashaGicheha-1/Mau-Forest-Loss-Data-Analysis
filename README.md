# Impact of Population Growth on Forest Loss in Mau Forest using Machine Learning and Mathematical Modelling Approach
## Overview
* This project explores how population growth affects forest loss in the Mau Forest, Kenya.
*  Using a simulated dataset, the study applies multiple linear regression, differential equations, and data visualization in R to analyze relationships between population dynamics and environmental degradation.
  
### Human Settlement in Mau Forest
<img width="602" height="376" alt="image" src="https://github.com/user-attachments/assets/c9768259-a702-4592-832f-ab4965746b1a" />

## Objectives
* To determine the impact of population growth on forest loss in Mau Forest,Narok County:Kenya.
* To Develop mathematical and statistical models to understand how population growth contributes to forest loss in Mau Forest over time.
* Develop mathematical and statistical models to understand how population growth contributes to forest loss in Mau Forest over time.
* Compare Differential Equation models with traditional statistical models.
* Demonstrate how mathematics can be used to model environmental change.
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

----------
--------------

# 1)Machine Learning Approach
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

-------------

## Clean the dataset in R
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

------------------
## Clean the dataset in excel
|Original|Clean version|
|---------|-------------|
|<img width="678" height="283" alt="image" src="https://github.com/user-attachments/assets/1c05932f-5535-4bcf-8600-ed30c57e9102" />|<img width="602" height="276" alt="image" src="https://github.com/user-attachments/assets/ee84b0a9-965e-405c-bc62-1716e850a04e" />|

----------
### Data cleaning process in excel
| Challenge Encountered | Description | Solution Applied |
|----------------------|-------------|------------------|
| Missing Year Values | Several records had blank values in the `Year` column, making it impossible to identify the time period for those observations. | Filtered the `Year` column for blanks and deleted rows with missing year values. |
| Duplicate Years | Multiple records existed for the same year, resulting in more than one observation per year. | Created a PivotTable and aggregated records by calculating the average of all numerical variables for each year. |
| Exact Duplicate Records | Some rows contained identical values across all columns. | Used Excel's **Data → Remove Duplicates** feature to eliminate exact duplicates. |
| Year = 0 Appearing in PivotTable | A year value of `0` appeared in the PivotTable, indicating invalid or incorrectly entered data. | Investigated the source data, corrected or removed invalid year entries, and refreshed the PivotTable. |
| Blank Category in PivotTable | A `(blank)` category appeared in the PivotTable due to missing values in the `Year` field. | Removed records with missing years and refreshed the PivotTable to eliminate the blank category. |
| Multiple Simulation Records Per Year | The simulated dataset contained several observations for the same year. | Aggregated duplicate years using the mean of all numerical variables to obtain a single annual record. |
| Population Values Showing Decimals | Averaging multiple records produced population values with decimal places. | Formatted the Population column to display whole numbers with a thousands separator. |
| PivotTable Header Naming Issues | Excel prevented renaming PivotTable fields to names already existing in the dataset. | Copied the PivotTable results and pasted them as values into a new worksheet before renaming headers. |
| Difficulty Selecting and Deleting Filtered Rows | Blank-year rows were scattered throughout the dataset and difficult to remove manually. | Applied filters to display only blank rows and deleted all visible filtered rows simultaneously. |
| Dataset Structure Not Clearly Defined | It was unclear whether duplicate years represented errors, simulations, or multiple observations. | Reviewed the project objective and decided to create one aggregated observation per year for modeling purposes. |
| Multiple Sheets After Cleaning | The workbook contained original data, PivotTable results, and cleaned data sheets. | Saved the final cleaned dataset separately as a CSV file for GitHub upload and machine learning analysis. |
| GitHub Synchronization Issues | Local changes could not be pushed because the remote repository contained newer commits. | Pulled updates from GitHub, completed the merge, and then successfully pushed changes. |

------------------

## Visualisations
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

------------------

## Multiple Linear Regression Model
<img width="428" height="260" alt="image" src="https://github.com/user-attachments/assets/d0fd5d16-161d-4cab-bf6b-e56146ef91a3" />

  * A multiple linear regression model was used to examine how population growth, agricultural expansion, and settlement expansion affect forest loss in the Mau Forest.
  * The model is given by: **F = 3329 + 7.213×10−6P + 8.811×10−4A + 1.102×10−3S**
  * Where:
      *  F = Forest Loss
      *  P = Population
      *  A = Agricultural Expansion
      *  S = Settlement Expansion
  * Population has a statistically significant but very small effect on forest loss.
  * Agricultural expansion and settlement expansion are not statistically
  significant in this modeL.
  * The model has a very low R^2, meaning it explains very little variation in forest loss.
  * This suggests that forest loss is influenced by other factors not included in the model.

-----------------------------
## Limitations of Machine Learning Approach
* Regression Model has low explanatory power (R²)
* Low Correlation between variables
* Dataset is simulated, not real-world.
  
----------------------------
-------------------

# 2)Mathematical Modelling Approach
* Show how environmental systems can be represented mathematically.
* Connect environmental science with Differential Equations.

## Differential Equations
### i)Population Growth 
dP/dt=rP

* Where:
  * P = Population
  * t = Time
  * r = Population growth rate

### Explanation
This differential equation states that the rate of population growth is proportional to the current population size.

### Solution
P(t)=P_0e^rt

* Where:
  * P_0 = Initial population
  * r = Growth rate.
  * t = Time

### Interpretation
* As population increases, the demand for land, housing, fuelwood, and agriculture may increase.
* This may create pressure on forest resources and environmental degradation.

---

### ii)Forest Loss 
dF/dt=kP

Where:
* F = Forest Loss
* P = Population
* k = Forest conversion coefficient

### Explanation
This model assumes that forest loss changes according to population size.

### Solution
Substitute:
P = P_0 e^rt

Resulting in:
dF/dt = kP_0 e^rt

Integrate:
F(t) = kP_0/r e^rt + C

Where C = Initial forest condition

### Interpretation
The model predicts that forest loss will increase as population grows over time.

---

## Population Growth Simulation in R

<img width="408" height="218" alt="image" src="https://github.com/user-attachments/assets/e157971b-26b8-4170-bb34-d27d4810613e" />

### Explanation
* The graph shows a continuous increase in population over the 50-year period.
* The population starts at approximately 100,000 people and grows to more than 400,000 people by Year 50.
* The curve becomes steeper as time increases, indicating that population growth is accelerating rather than increasing at a constant rate.
* This pattern is characteristic of exponential growth, which is described by the differential equation:
* **dP/dt=rP**
* The model assumes that the rate of population growth is proportional to the current population size.
* As the population becomes larger, the annual increase in population also becomes larger, causing the curve to rise more rapidly.
* In the context of the Mau Forest ecosystem, continued population growth may increase demand for agricultural land, settlement expansion, fuelwood, and other natural resources.
* This increased pressure on resources could contribute to higher rates of forest loss and environmental degradation if sustainable land-use practices are not implemented.
* The simulation demonstrates how differential equations can be used to study long-term population dynamics and their potential environmental impacts.
---

## Forest Loss Simulationin R

<img width="401" height="218" alt="image" src="https://github.com/user-attachments/assets/cd21e2da-a670-48a0-be96-7aa80bc7797b" />

### Explanation
### Trends Observed
* The graph shows a continuous increase in forest loss over the 50-year period.
* Forest loss starts at approximately 3,300 units and increases to more than 14,000 units by Year 50.
* The curve becomes steeper as time progresses, indicating that the rate of forest loss is accelerating rather than remaining constant.
* The shape of the curve suggests exponential growth in forest loss, which is consistent with the differential equation model where increasing population leads to increasing pressure on forest resources.
* The results indicate that forest depletion becomes more severe over time if current trends continue.

### Environmental Implications
* Increasing forest loss may lead to destruction of wildlife habitats and reduced biodiversity within the Mau Forest ecosystem.
* Continued deforestation can contribute to soil erosion due to reduced vegetation cover.
* Forests play an important role in regulating water cycles. Excessive forest loss may affect river flows, water availability, and watershed protection.
* The reduction of forest cover decreases the ability of forests to absorb carbon dioxide, potentially contributing to climate change.
* Increased human activities such as agricultural expansion and settlement growth may further accelerate environmental degradation.

### Long-Term Effects
* If the trend continues, a significant portion of the forest could be lost in future decades.
* Loss of forest resources may negatively affect communities that depend on the forest for water, fuelwood, and other ecosystem services.
* Reduced biodiversity may increase the risk of species decline and habitat fragmentation.
* Environmental degradation could lead to lower agricultural productivity due to soil and water resource depletion.
* The simulation highlights the importance of sustainable land-use planning, conservation efforts, and forest management policies to reduce future forest loss.
* The model demonstrates that small increases in population pressure today can result in substantially greater forest loss in the future because the effect accumulates over time.
---

## Limitations of the Mathematical Modelling Approach
* The model assumes that population growth is the main cause of forest loss, yet deforestation is also influenced by factors such as illegal logging, climate change, conservation efforts, and government policies.
* The analysis is based on simulated data rather than real Mau Forest data, meaning the results may not accurately represent actual conditions in the forest.
* The model assumes that population growth follows a constant growth rate over time. In reality, population growth rates can change due to social, economic, and environmental factors.
* The model only focuses on the relationship between population growth and forest loss, ignoring other important variables such as agricultural expansion and settlement growth.
* The predictions are based on assumptions and should not be interpreted as exact forecasts of future forest loss.
* The model does not consider where forest loss occurs within Mau Forest and treats the entire forest as a single system.
* As the simulation projects further into the future, uncertainty increases and the results become less reliable.

--------------

# Comparison of Regression and Differential Equations
| Aspect | Multiple Linear Regression | Differential Equation Model |
|----------|----------|----------|
| Purpose | Examines the relationship between population, agricultural expansion, settlement expansion, and forest loss. | Models how forest loss changes continuously over time as population grows. |
| Model | F = 3329 + 7.213×10⁻⁶P + 8.811×10⁻⁴A + 1.102×10⁻³S | dF/dt = kP |
| Variables Used | Population, Agricultural Expansion, Settlement Expansion | Population and Time |
| Approach | Statistical Modelling | Mathematical Modelling |
| Data Requirement | Requires historical data for model training. | Can be used to simulate future scenarios using assumptions. |
| Main Finding | Population has a statistically significant but very small effect on forest loss. Agricultural and settlement expansion were not statistically significant. | Forest loss increases as population grows over time, producing an accelerating trend in forest depletion. |
| Predictive Power | Low R² indicates the model explains very little variation in forest loss. | Demonstrates theoretical long-term behaviour under assumed growth conditions. |
| Visual Evidence | Scatter plots showed weak relationships between variables and forest loss. | Population and forest loss simulations showed exponential growth patterns. |
| Interpretation | The available variables do not strongly explain forest loss in the simulated dataset. | Continuous population growth can lead to increasing rates of forest loss over time. |
| Strengths | Data-driven and based on observed values. | Captures dynamic change and allows future forecasting. |
| Limitations | Low explanatory power and weak variable relationships. | Depends on assumptions and simulated parameters. |
| Conclusion | Population growth alone is a weak predictor of forest loss in the simulated dataset. | Population growth may contribute to accelerating forest loss when viewed as a continuous process over time. |

----------------------------

# Comparison of Current and Future Improvements 
|Current Improvements|Future Improvements|
|--------------------|-------------------|
|Checked relevance of my dataset by comparing it with my friend's Environment Studies assignment.|Use more models in Machine Learning such as Random Forest model and compare results with regression model.|
|Took more time to understand the dataset and the cleaning process.|Add Statistical Modelling and compare results with Machine Learning and Mathematical Modelling.|
|Created visualisations before model building instead of after.|Write README file in multiple languages such as Kiswahili and Chinese(Mandarin) for a wider audience.|
|Checked correlation using all variables instead of just one variable.|Have an audio file for the README file to cater for everyone.|
|Split dataset into training and testing sets before building the model.| Provide a version of the clean dataset.|
|Trained the multiple linear regression model on training data only.|Be able to change image sizes.|
|Evaluated on the testing data for better analysis.|Write down skills  gained in this project.|
|Created a project folder in R for Analysis file.||
|Made changes to Analysis file in the project folder and pushed the changes to Github.||
|Added mathematical modelling to the project.||
|Enhanced application of Differential Equations to project||

-----------------------

## Attachments
* Images folder containing the 3 visualizations
* Analysis.R file showing my analysis of the simulated Mau Forest dataset.
* Individual Assignment docx showing IMPACT OF POPULATION GROWTH AND HUMAN-INDUCED DEVELOPMENT ACTIVITIES ON ENVIRONMENTAL DEGRADATION:SUSTAINABLE APPROACHES AGAINST THE VICE GIVING RELEVANT EXAMPLES FROM MY COUNTRY




