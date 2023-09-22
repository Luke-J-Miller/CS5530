# [Question 1](https://github.com/Luke-J-Miller/CS5530/tree/main/Assignment_1/Question_1)
## Raw Data
The provided data was not labeled with units in the column names.
![image](https://github.com/Luke-J-Miller/CS5530/assets/111100132/4ee0273a-c339-41ca-a6ee-dd5086af8c6f)  
## Cleaned Data  
The data was updated with labels in the column names.  Additionally, categorical variables were updated to one-hot encoding, and features were added that were combinations of the other data.
![image](https://github.com/Luke-J-Miller/CS5530/assets/111100132/3280d678-5cd0-439b-a725-06890e0cc84f)  
## Understanding Data with Visualization  
### Correlation plots
pairs.panels was used to understand distributions and correlations in the data.
![image](https://github.com/Luke-J-Miller/CS5530/assets/111100132/242b5680-2009-4543-b7c8-c6de581ead05)  
  
Additionally, a correlation plot was used to further visualize correlations in the data. Of particualr interest are the strong positive correlation between frailty and weight. This was further refined with the weight divided by height metric.  Additionally there was a negative correlation between frailty and grip strength.  This was further refined with the grip strength divided by height metric
![image](https://github.com/Luke-J-Miller/CS5530/assets/111100132/46df5123-03f5-487e-9a5e-91b5bc6ed579)  

### Boxplots
The following four charts show the distribution of frailty with different features.  It appears height divided by weight is best able to separate the samples with the exception of one outlier.  
![image](https://github.com/Luke-J-Miller/CS5530/assets/111100132/0a74b1dd-e7a2-47db-9980-34e7d1a34ed7)![image](https://github.com/Luke-J-Miller/CS5530/assets/111100132/51288a36-b499-4fb4-bbaa-5beefba2f7a5)  
  
The following six boxplots further show the separation of distributions based upon various features.
![image](https://github.com/Luke-J-Miller/CS5530/assets/111100132/14a77501-9aab-41fb-b8af-1279cf574685)
![image](https://github.com/Luke-J-Miller/CS5530/assets/111100132/87472cfe-2099-49c7-b3b5-93af60dec2ed)  
## Modeling  
While not requried for the assignment, two simple linear models and their confusion matrices were constructed.
![image](https://github.com/Luke-J-Miller/CS5530/assets/111100132/ba5ee431-d0cb-4c05-a4a8-fa05707fc62f)
![image](https://github.com/Luke-J-Miller/CS5530/assets/111100132/cf707516-da1e-4552-9cc6-a692148b4d0c)  
  
![image](https://github.com/Luke-J-Miller/CS5530/assets/111100132/d899d5ef-0da8-4a1e-b123-902aadb05d93)
![image](https://github.com/Luke-J-Miller/CS5530/assets/111100132/03ac3b11-497c-4af1-9c84-1ee6f152306b)



# [Question 2](https://github.com/Luke-J-Miller/CS5530/tree/main/Assignment_1/Question_2)
##  [Raw Data](https://github.com/Luke-J-Miller/CS5530/tree/main/Assignment_1/Question_2/data_raw)
A sample of the first 16 rows of raw data that includes numerous categorical variables that are difficult to model.  
![image](https://github.com/Luke-J-Miller/CS5530/assets/111100132/c3c846a1-94cb-4f5d-a6af-ccbfc665c06a)![image](https://github.com/Luke-J-Miller/CS5530/assets/111100132/d13e1f5a-1d3a-46e5-9da9-43e092240a86)  
## [Cleaned Data](https://github.com/Luke-J-Miller/CS5530/tree/main/Assignment_1/Question_2/data_clean)
The data was cleaned to one-hot encode all the categorical variables.  It is not shown in this screen shot, but the scores were later combined and averaged to create a combined score feature.
![image](https://github.com/Luke-J-Miller/CS5530/assets/111100132/5c27084f-250d-4b65-bf2e-af6974b1e3c8)  
## Understanding relationships by visualization  
A corrplot and pairs.panels were used to visualize correlations in the data.  Unsurprisingly, the highest correlations were seen between the various test scores.  A reasonable hypothesis is people who are good at taking one test are good at taking another.  Additionally, gender and whether they had taken a prep course showed strong correlations with test scores.  Females had higher scores in all tests except math where there was a negative correlation.  Reduced price or free lunches had a moderate negative correlation with test scores.  Additionally, although it is hard to see in the screenshot, parent education and race had slight correlations with the test scores.  
![image](https://github.com/Luke-J-Miller/CS5530/assets/111100132/50625f89-108e-4e1a-ac0d-b21bc72d00c0)
![image](https://github.com/Luke-J-Miller/CS5530/assets/111100132/c8bbc6fb-d5e9-4f1f-a2a4-92007a42df0f)  
### Box plots
#### Gender and reduced price lunch vs test scores
To better understand the effects of features on test scores, box plots were made that compared test score and gender with scores in math, reading, and writing.  A fourth plot was made that compared gender and combined scores with reduced or free lunches.
![image](https://github.com/Luke-J-Miller/CS5530/assets/111100132/a409729c-18fc-4fe8-b6e9-c5910b2d12a2)![image](https://github.com/Luke-J-Miller/CS5530/assets/111100132/f434e885-ded8-41c5-b9c0-67e22b95eaad)  
#### Race vs test scores
Having understood gender and reduced price lunch, race was plotted against test scores.
![image](https://github.com/Luke-J-Miller/CS5530/assets/111100132/ae9759a9-58f0-4df6-b116-24752dae2a33)  
#### Race and education
...and then education.  
![image](https://github.com/Luke-J-Miller/CS5530/assets/111100132/8c096611-0969-44b1-a8a6-73cc6f1650f7)  
#### Race and reduced price lunch  
... and then reduced price lunch.  It appears that reduced price lunch, race, and education are all strongly correlated.  My hypothesis is reduced price lunch, which is determined by income, demonstrates the distribution of income among race which also effects parental education levels.  Given that reduced price lunch has the strongest correlation, it seems likely wealth is the most likely predictor (besides gender and prep courses) for predicting test scores.
![image](https://github.com/Luke-J-Miller/CS5530/assets/111100132/870c3bf3-27bc-4abc-b511-5a594ab16d03)  
## Results
### Modeling
A few quick models were ran to predict various test scores based upon gender and reduced price lunch.  The models showed good predictive power.
`math_model = lm(score_math ~ is_female + has_reduced_price_lunch + taken_prep_course, data = clean_student_performance)
rdg_model = lm(score_rdg ~ is_female + has_reduced_price_lunch + taken_prep_course, data = clean_student_performance)
wrtng_model = lm(score_wrtng ~ is_female + has_reduced_price_lunch + taken_prep_course, data = clean_student_performance)
combined_model = lm(Combined_scores ~ is_female + has_reduced_price_lunch + taken_prep_course, data = clean_student_performance)
clean_student_performance$predicted_math <- predict(math_model, clean_student_performance)`  
### Modeling Visualizations  
A couple more visualizations showing the performance of the model and the coeeficients of features.
![image](https://github.com/Luke-J-Miller/CS5530/assets/111100132/63011d74-ea52-4897-8786-3a30eb490e37)

![image](https://github.com/Luke-J-Miller/CS5530/assets/111100132/b47f24fd-d731-41ae-8f81-9f9ed17e856d)
