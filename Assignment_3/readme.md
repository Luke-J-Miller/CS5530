# Assignment 3  
  
[data link](https://app.box.com/s/7qv44umhw0vnzgmoe9krfkfkv5kf2atv)  
  
## 1.The data file diabetes.csv contains data of 768 patients. In this data there are 8 attributes (Pregnancies, Glucose, BloodPressure, SkinThickness, Insulin, BMI, DiabetesPedigreeFunction, and Age) and 1 response variable (Outcome). The response variable, Outcome, has binary value (1 indicating the outcome is diabetes and 0 means no diabetes). For this assignment purposes we will consider this data as a population. Use this data to perform the following:  
  
![image](https://github.com/Luke-J-Miller/CS5530/assets/111100132/1c7d1988-9551-4406-9a1c-efce71827c33)  
  
### a) set a seed (to ensure work reproducibility) and take a random sample of 25 observations and find the mean Glucose and highest Glucose values of this sample and compare these statistics with the population statistics of the same variable. You should use charts for this comparison. (5 points)  
  
![image](https://github.com/Luke-J-Miller/CS5530/assets/111100132/8424cd0c-fa41-42f8-8a0a-a574a7a7686f)  
  
While the variation in the sample is smaller, it's biased much higher with a mean of 129.6 vs 120.9 for the population.  Additionally, the population has higher highs and lower lows. Finally, the population appears to have an erroneous value of blood glucose equal to zero.  
  
### b) Find the 98th percentile of BMI of your sample and the population and compare the results using charts. (5 points)  
  
![image](https://github.com/Luke-J-Miller/CS5530/assets/111100132/a3d76837-7bc7-4f7f-9674-1a1e865b6abb)  
  
![image](https://github.com/Luke-J-Miller/CS5530/assets/111100132/1237d8df-a77f-46ca-8ea3-8990bdec4184)  
  
Similarly to the reasoning in part a,the sample has a lower 98th percentile since a sample is less likely to contain values at the tails of the distribuiton.  
  
### c) Using bootstrap (replace= True), create 500 samples (of 150 observation each) from the population and find the average mean, standard deviation and percentile for BloodPressure and compare this with these statistics from the population for the same variable. Again, you should create charts for this comparison. Report on your findings. (10 points)  
  
![image](https://github.com/Luke-J-Miller/CS5530/assets/111100132/500caa4a-fece-4ffb-9dea-9d4f9855aa24)  
  
![image](https://github.com/Luke-J-Miller/CS5530/assets/111100132/3ebadfa1-5618-46cb-8a3d-03d7826367f8)  
  
Here we are able to see the strenght of bootstrapped samples. The mean and variance are nearly identical in the population and sample.  There is a little over two percent diffence in the 95th percentile values, but it is still a very close approximation.  In this instance, we are able to sample from the entire population (for illustrative purpose) and the bootstrap sample is over two-thirds the size of the population.  Close concordance is to be expected.
