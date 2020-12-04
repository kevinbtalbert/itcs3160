-- Insert Ratings into Ratings table (Deprecated, use RatingsTableData.sql)
INSERT INTO `Campus_Eats_Fall2020`.`rating`
(`rating_id`,
`order_id`,
`driver_rating`,
`restaurant_rating`,
`driver_detailed`,
`restaurant_detailed`)
VALUES
(1,1,5,5,"Great service","Great food!"),
(2,2,4,5,"Driver was slow","Food was hot and tasty!"),
(3,3,2,1,"Driver dropped the food before delivering it","The food was cold and clearly a day old");

-- Select all drivers with minimum driver rating
SELECT *
FROM rating
WHERE driver_rating = (
	SELECT MIN(driver_rating)
	FROM rating);

-- Select minimum driver rating (specify driver id)
SELECT `driver`.driver_id, (`driver`.rating)
FROM `driver`
WHERE `driver`.driver_id = 2;

-- Select all drivers with maximum driver rating
SELECT *
FROM rating
WHERE driver_rating = (
	SELECT MAX(driver_rating)
	FROM rating);
    
-- Select maximum driver rating (specify driver id)
SELECT `driver`.driver_id, MAX(`driver`.rating)
FROM `driver`
WHERE `driver`.driver_id = 2;

-- Select average driver rating (specify driver id)
SELECT `driver`.driver_id, AVG(`driver`.rating)
FROM `driver`
WHERE `driver`.driver_id = 2;


-- Select all restaurants with minimum ratings
SELECT *
FROM rating
WHERE restaurant_rating = (
	SELECT MIN(restaurant_rating)
	FROM rating);

-- Select minimum restaurant rating (specify restaurant id)
SELECT `restaurant`.restaurant_rating, MIN(`restaurant`.rating)
FROM `restaurant`
WHERE `restaurant`.restaurant_id = 1;

-- Select all restaurants with maximum ratings
SELECT *
FROM rating
WHERE restaurant_rating = (
	SELECT MAX(restaurant_rating)
	FROM rating);
    
-- Select maximum restaurant rating (specify restaurant id)
SELECT `restaurant`.restaurant_rating, MAX(`restaurant`.rating)
FROM `restaurant`
WHERE `restaurant`.restaurant_id = 1;

-- Select average restaurant rating (specify restaurant id)
SELECT `restaurant`.restaurant_rating, AVG(`restaurant`.rating)
FROM `restaurant`
WHERE `restaurant`.restaurant_id = 1;

