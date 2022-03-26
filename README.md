# YELP-dataset-analysis

Yelp dataset is used to research and analysis in investments on company, based on business and ratings how they impact. The dataset includes data about businesses, reviews. Here in my project I used review and business dataset.

Table of Contents

1)Introduction

2)Goal

3)Datasets

4)Technology Stack

5)Bucket Calculation

6)Project Architecture

7)ER Diagram

8)Analysis

<h2>1. Introduction</h2>

This hadoop project is to apply some data engineering principles to Yelp Dataset in the areas of processing, storage, and retrieval. In this Project, we will use the yelp review dataset to analyze businesses and reviews over a period of time. We will try to see which all business have highest rating and lowest rating. Beyond processing this data, we will display the data in terms of graphs to let the leadership understand data in different dimensions.

<h2>2. GOAL</h2>

The main goal of this project is to provide an insight to the future investor/owner, on where and what business to invest in or where to start a new business based on the customer satisfaction.

a) Top 10 Business to invest in with highest rating.

b) Least 10 Business to invest in with least rating and need improvement.

c) Number of Business that come under each rating.

d) Business with average rating less than 2.5 and the review associated with it.

e) Business with average rating greater than 4.5 and the review associated with it.

<h2>3. Datasets</h2>

a) Review dataset - https://www.kaggle.com/yelp-dataset/yelp-dataset?select=yelp_academic_dataset_review.json

b) Business dataset - https://www.kaggle.com/yelp-dataset/yelp-dataset?select=yelp_academic_dataset_business.json

<h2>4. Technology Stack</h2>

a. HDFS 

b. Hive 

c. Pyspark 

d. Flask

e. Html

f. Plotly

<h2>5. Bucket Calculation</h2>

Block Size in HDFS = 128 MB Size of review dataset = 5120 MB 5120/128 = 40 2^x = 40 where x will be number of buckets Hence we will take number of bucket = 6 Size of user dataset = 3205 MB 3205/128 = 25 2^x = 25 where x will be number of buckets Hence we will take number of bucket = 5

<h2>6. Project Architecture</h2>

![image](https://user-images.githubusercontent.com/100192167/159221457-c66f7ed4-3429-46eb-8f92-71cb4372e8b8.png)


<h2>7. ER Diagram</h2>


![image](https://user-images.githubusercontent.com/100192167/159221478-76e29e29-176c-41de-b690-4507d594d1a5.png)


<h3>8. Analysis</h3>

<h4>Top 10 Companies with good ratings</h4>


![image](https://user-images.githubusercontent.com/100192167/159221502-0fa60b0e-84e3-41b0-a637-3e097bab6640.png)


<h4>Average stars rating of companies</h4>

![image](https://user-images.githubusercontent.com/100192167/159221524-f5a2c116-18ff-43f4-a22d-359df139106a.png)

<h4>Count of stars of each companies on which investment can be made</h4>

![image](https://user-images.githubusercontent.com/100192167/159221556-6f937936-505d-4a3b-ac3e-ca9b11a75690.png)

<h4>Companies with rating less than 2.5 </h4>

<img width="922" alt="image" src="https://user-images.githubusercontent.com/100192167/159222127-bf85fefb-f6f2-4503-8d5f-3a093cac1415.png">

<h4>Companies with rating greater than 4.5 </h4>

<img width="913" alt="image" src="https://user-images.githubusercontent.com/100192167/159222216-f21bbcbd-82b2-4453-bc84-41070b81e1d5.png">



