# A Simulated Study Of How Population Growth Affects Forest Loss in Mau Forest:Kenya
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

--------------
# 1)Machine Learning
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

## Multiple Linear Regression Model
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
  * This suggests that forest loss is influenced by other factors not included in the model.

----------------------------
# 2)Mathematical Modelling
* Show how environmental systems can be represented mathematically.
* Connect environmental science with Differential Equations.

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
  
### Population Growth Model
$$
\frac{dP}{dt}=rP
$$
Where:

* P = Population
* t = Time
* r = Population growth rate

### Explanation
This fifferential equation states that the rate of population growth is proportional to the current population size.

### Solution
\[
P(t)=P_0e^{rt}
\]

Where:

* \(P_0\) = Initial population
* \(r\) = Growth rate
* \(t\) = Time

### Interpretation
* As population increases, the demand for land, housing, fuelwood, and agriculture may increase.
* This may create pressure on forest resources and environmental degradation.

---

## Relationship Between Population Growth and Forest Loss ////////

Explain:

* Growing populations require more agricultural land.
* Human settlements expand over time.
* Increased demand for natural resources can accelerate forest depletion.

This section connects the mathematics to the real-world environmental problem.

---

# Forest Loss Differential Equation

\[
\frac{dF}{dt}=kP
\]

Where:

* F = Forest Loss
* P = Population
* k = Forest conversion coefficient

### Explanation
This model assumes that forest loss changes according to population size.

---

# Forest Loss Differential Equation Solved
Substitute:
$$
P = P_0 e^{rt}
$$

Resulting in:
$$
\frac{dF}{dt} = kP_0 e^{rt}
$$

Integrate:
$$
F(t) = \frac{kP_0}{r} e^{rt} + C
$$

Where:

* C = Initial forest condition

### Interpretation
The model predicts that forest loss will increase as population grows over time.

---

# Population Growth Simulation in R

<img width="408" height="218" alt="image" src="https://github.com/user-attachments/assets/e157971b-26b8-4170-bb34-d27d4810613e" />

## Explanation of findings
* The graph shows a continuous increase in population over the 50-year period.
* The population starts at approximately 100,000 people and grows to more than 400,000 people by Year 50.
* The curve becomes steeper as time increases, indicating that population growth is accelerating rather than increasing at a constant rate.
* This pattern is characteristic of exponential growth, which is described by the differential equation:

\[
\frac{dP}{dt}=rP
\]

* The model assumes that the rate of population growth is proportional to the current population size.
* As the population becomes larger, the annual increase in population also becomes larger, causing the curve to rise more rapidly.
* In the context of the Mau Forest ecosystem, continued population growth may increase demand for agricultural land, settlement expansion, fuelwood, and other natural resources.
* This increased pressure on resources could contribute to higher rates of forest loss and environmental degradation if sustainable land-use practices are not implemented.
* The simulation demonstrates how differential equations can be used to study long-term population dynamics and their potential environmental impacts.
---

# Step 8: Simulate Forest Loss in R

<img width="401" height="218" alt="image" src="https://github.com/user-attachments/assets/cd21e2da-a670-48a0-be96-7aa80bc7797b" />

## Explanation of findings
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

# Compare Exact and Numerical Solutions

Create a section:

```markdown
## Comparing Solutions
```

Compare:

### Analytical Solution

Advantages:

* Exact
* Based on calculus

Limitations:

* Not always possible for complex models

---

# Step 12: Perform Correlation Analysis

Before regression analysis:

Create:

```markdown
## Correlation Analysis
```

Include:

* Correlation Matrix
* Heatmap

Investigate:

* Population vs Forest Loss
* Agriculture vs Forest Loss
* Settlement Expansion vs Forest Loss

Explain what the correlations mean.

---

# Step 13: Improve the Regression Analysis

Keep your Multiple Linear Regression section.

Clearly explain:

\[
F = 3329 + 7.213\times10^{-6}P + 8.811\times10^{-4}A + 1.102\times10^{-3}S
\]

Discuss:

* Significance of variables
* R² value
* Model limitations

------------
**NB: regression and differential equations are two separate approaches.**

---

# Compare Results of Regression and Differential Equations
|Regression|Differential Equations|
|----------|-----------------------|


----------------------------
# 3)Statistical Modelling

### Multiple Linear Regression

Advantages

* Data-driven
* Simple interpretation

Limitations

* Weak predictive power
* Depends heavily on data quality

## Mathematical Model

### Differential Equations

Advantages

* Models continuous change
* Allows simulation of future scenarios

Limitations

* Requires assumptions
* Simplifies reality

---

# Step 15: Add Scenario Analysis

Create:

```markdown
# Scenario Analysis
```

Compare three population growth rates.

## Scenario 1: Low Growth

\[
r=0.01
\]

## Scenario 2: Moderate Growth

\[
r=0.03
\]

## Scenario 3: High Growth

\[
r=0.05
\]

Create graphs for each scenario.

Discuss:

* Future population
* Predicted forest loss
* Environmental consequences

---

# Step 16: Improve the Dataset Section

Expand the Dataset section to include:

## Why Simulate Data?

* Lack of complete real-world data.
* Need to demonstrate mathematical modeling concepts.

## Assumptions Used

* Population grows steadily.
* Agricultural expansion increases with population.
* Forest loss responds to human pressure.

## Limitations

* Simulated data cannot fully capture real-world complexity.
* Results should be interpreted as an educational exercise.

---

# Step 17: Improve the Conclusion

Replace the current conclusion with a stronger one.

Example:

> The regression analysis suggests that population growth alone is a weak predictor of forest loss in the simulated dataset. However, the differential equation model demonstrates how continuous population growth can contribute to increasing rates of forest depletion over time. Combining statistical and mathematical approaches provides deeper insight into environmental change and supports better understanding of long-term ecosystem dynamics.

---

# Step 18: Add a Skills Gained Section

```markdown
# Skills Gained
```

## Mathematics

* Differential Equations
* Exponential Growth Models
* Integration
* Mathematical Modelling
* Euler's Method

## Statistics

* Correlation Analysis
* Multiple Linear Regression
* Model Evaluation

## Programming

* R Programming
* Data Visualization
* Simulation

## Environmental Analytics

* Forest Loss Analysis
* Population Dynamics
* Sustainability Assessment

---

# Step 19: Add Future Work

Update the Future Work section.

Possible additions:

* Use real-world Mau Forest datasets.
* Apply Logistic Growth Models.
* Test Random Forest Regression.
* Compare R and Python implementations.
* Include GIS and spatial analysis.
* Develop Partial Differential Equation models.
* Predict future forest cover under different conservation policies.

---

# Final Deliverables

By the end of the project, you should have:

✅ Cleaned dataset

✅ Correlation analysis

✅ Multiple linear regression model

✅ Population growth differential equation

✅ Forest loss differential equation

✅ Analytical solution

✅ Euler's Method implementation

✅ Population simulation graphs

✅ Forest loss simulation graphs

✅ Scenario analysis

✅ Regression vs Differential Equation comparison

✅ Environmental interpretation

✅ Skills gained section

✅ Improved conclusion

✅ Future work roadmap



## Limitations
* Regression Model has low explanatory power (R²)
* Low Correlation between variables
* Dataset is simulated, not real-world.

## Current Improvements ~ Make a table
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



