create database ola;

use ola;

select * from bookings;

-- 1_Retrieve all successful bookings:

Create View Successful_Bookings As
select * from bookings
where Booking_Status = 'Success';

Select * From Successful_Bookings;

-- 2_Find the average ride distance for each vehicle type:

Create View ride_distance_for_each_vehicle As
SELECT Vehicle_Type, AVG(Ride_Distance) as avg_distance 
FROM bookings 
GROUP BY Vehicle_Type;

Select * from ride_distance_for_each_vehicle;

-- 3_Get the total number of cancelled rides by customers:

Create View cancelled_rides_by_customers As
SELECT COUNT(*) 
FROM bookings 
WHERE Booking_Status = 'Canceled by Customer';

Select * from cancelled_rides_by_customers;

-- 4_List the top 5 customers who booked the highest number of rides:

Create View Top_5_Customers As
SELECT Customer_ID, COUNT(Booking_ID) as total_rides 
FROM bookings 
GROUP BY Customer_ID 
ORDER BY total_rides DESC LIMIT 5;

Select * from Top_5_Customers;

-- 5_Get the number of rides cancelled by drivers due to personal and car-related issues:

Create View Rides_cancelled_by_Drivers_P_C_Issues As
SELECT COUNT(*) 
FROM bookings 
WHERE Canceled_Rides_by_Driver = 'Personal & Car related issue';

Select * from Rides_cancelled_by_Drivers_P_C_Issues;

-- 6_Find the maximum and minimum driver ratings for Prime Sedan bookings:

Create View Max_Min_Driver_Rating As
SELECT 
MAX(Driver_Ratings) as max_rating, 
MIN(Driver_Ratings) as min_rating 
FROM bookings 
WHERE Vehicle_Type = 'Prime Sedan';

Select * from Max_Min_Driver_Rating;

-- 7_Retrieve all rides where payment was made using UPI:

Create View UPI_Payment As
select * from bookings
where Payment_Method = 'UPI';

Select * from UPI_Payment;

-- 8_Find the average customer rating per vehicle type:

Create View AVG_Cust_Rating As
SELECT Vehicle_Type, AVG(Customer_Rating) as avg_customer_rating 
FROM bookings
GROUP BY Vehicle_Type;

Select * from AVG_Cust_Rating;

-- 9_Calculate the total booking value of rides completed successfully:

Create View total_successful_ride_value As
SELECT SUM(Booking_Value) as total_successful_value 
FROM bookings 
WHERE Booking_Status = 'Success';

Select * from total_successful_ride_value;

-- 10_List all incomplete rides along with the reason:

Create View Incomplete_Rides_Reason As
SELECT Booking_ID, Incomplete_Rides_Reason 
FROM bookings 
WHERE Incomplete_Rides ='Yes';

Select * from Incomplete_Rides_Reason;