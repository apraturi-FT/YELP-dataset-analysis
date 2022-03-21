from pyspark.sql import SparkSession
from pyspark.sql.types import StructField,StructType,StringType,IntegerType
from pyspark.sql.functions import explode,count,split,from_json,lit,struct,create_map,col,when
# import nltk
# nltk.download('vader_lexicon')
# from nltk.sentiment.sentiment_analyzer import SentimentAnalyzer
# from vaderSentiment.vaderSentiment import SentimentIntensityAnalyzer

# sid = SentimentIntensityAnalyzer()



spark=SparkSession.builder.getOrCreate()

df_business=spark.read.json("file:///home/saif/LFS/datasets/Yelp_Project/datasets/yelp_business.json")

df_review=spark.read.json("file:///home/saif/LFS/datasets/Yelp_Project/datasets/yelp_review.json")

#df_business.show()
#df_business.printSchema()
# print(df_business.count())
df1_business=df_business.withColumn("Review_status",when(df_business.stars < 4.0 ,"Bad").otherwise("Good"))
#df1.show()
# print(df1_business.distinct().count())
df2_business=df1_business.dropna().dropDuplicates().limit(5000)
# print(df_review.count())
df1_review=df_review.dropna().dropDuplicates().limit(10000)
# print(df1_review.count())
df2_business.write.json("/user/saif/HFS/Output/Yelp/business",mode="overwrite")
df1_review.write.json("/user/saif/HFS/Output/Yelp/review",mode="overwrite")



# df2_business.show()
# print(df2_business.count())
# df.printSchema(
#df1=df.withColumn("sentiments",sid.polarity_scores("text"))
#df1=sid.polarity_scores()
# df1=df.withColumn("sentiments",df.text)
# df1=df.withColumn("Sentiments_negative",df.select(lit(sid.polarity_scores(df.text)['neg'])))


# df1=df.select("*",lit(sid.polarity_scores(col("text"))['neg']).alias("Negative"),lit(sid.polarity_scores(col("text"))['neu']).alias("Neutral"),lit(sid.polarity_scores(col("text"))['pos']).alias("Positive"))
# df1.show()
# df1.printSchema()
# df2=df1.filter(df1.Negative!=0)
# df2.show()
