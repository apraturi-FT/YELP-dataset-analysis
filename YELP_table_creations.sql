create database Yelp_analysis;

create table review (review_id string,user_id string,business_id string,stars double,useful int,funny int,cool int,text string,review_date string) 
ROW FORMAT SERDE 'org.apache.hive.hcatalog.data.JsonSerDe' location '/user/saif/HFS/Output/Yelp/review' ; 

create table business
(
address string,
attributes struct<AcceptsInsurance:string,AgesAllowed: string,Alcohol: string,Ambience: string,
BYOB: string,BYOBCorkage: string,BestNights: string,BikeParking: string,BusinessAcceptsBitcoin: string,
BusinessAcceptsCreditCards: string,BusinessParking: string,ByAppointmentOnly: string,Caters: string,CoatCheck: string,
Corkage: string,DietaryRestrictions: string,DogsAllowed: string,DriveThru: string,GoodForDancing: string,GoodForKids: string,
GoodForMeal: string,HairSpecializesIn: string,HappyHour: string,HasTV: string,Music: string ,NoiseLevel: string,
Open24Hours: string,OutdoorSeating: string,RestaurantsAttire: string,RestaurantsCounterService: string,RestaurantsDelivery: string,
RestaurantsGoodForGroups: string,RestaurantsPriceRange2: string,RestaurantsReservations: string,RestaurantsTableService: string,
RestaurantsTakeOut: string,Smoking: string,WheelchairAccessible: string,WiFi: string>,
business_id string,
categories string,
city string,
hours struct<Friday: string,Monday: string,Saturday: string,Sunday: string,Thursday: string,Tuesday: string,Wednesday: string>,
is_open string,
latitude double,
longitude double,
name string,
postal_code string,
review_count string,
stars double,
state string,
Review_status string
)
row format serde 'org.apache.hive.hcatalog.data.JsonSerDe'
LOCATION '/user/saif/HFS/Output/Yelp/business';

add jar /home/saif/LFS/jars/hive-hcatalog-core-3.1.0.jar

create table stg_analysis as select r.`date`,b.business_id,b.name,b.stars,b.Review_status,r.text from review r inner join business b on b.business_id=r.business_id;


create table business_analysis as select cast(`date` as date),business_id,name,stars,Review_status,text from analysis where business_id is not null;

