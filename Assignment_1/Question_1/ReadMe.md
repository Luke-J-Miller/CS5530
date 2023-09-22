# Question 1
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


