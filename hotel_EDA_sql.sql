USE hotel_booking;

SELECT * FROM hotel_bookings;


-- checking how many people want to stay at resort hotel or city hotel
SELECT 
	hotel AS type_hotel,
	COUNT(hotel) AS no_hotel
FROM
	hotel_bookings
GROUP BY 
	hotel;

-- checking how many people cancel their room at resort hotel or city hotel
 
SELECT 
	hotel AS type_hotel,
	COUNT(hotel) AS no_hotel,
    is_canceled
FROM
	hotel_bookings
GROUP BY 
	hotel,
	is_canceled;
 
 
 
 
-- checking what type room are most popular that were booked by customers
SELECT 
	reserved_room_type AS type_room,
	COUNT(reserved_room_type) AS no_type_room,
    (COUNT(reserved_room_type)/ (SELECT COUNT(reserved_room_type) FROM hotel_bookings)) * 100 AS percent_type_room
FROM
	hotel_bookings
GROUP BY 
	reserved_room_type
ORDER BY
	no_type_room DESC;    
    
-- checking the most popluar month of 2016 of booking hotel
 SELECT 
	arrival_date_month AS arrival_month_2016,
	COUNT(arrival_date_month) AS no_arrived
FROM
	hotel_bookings
WHERE
	arrival_date_year = 2016
GROUP BY 
	arrival_date_month
ORDER BY
	no_arrived DESC;   

-- checking if customer book meal or not

SELECT
	meal,
    COUNT(meal),
	(COUNT(meal)/ (SELECT COUNT(meal) FROM hotel_bookings)) * 100 AS percent_type_meal
FROM
	hotel_bookings
GROUP BY
	meal

    
    
    
    
    
    