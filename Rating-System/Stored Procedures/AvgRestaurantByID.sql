CREATE DEFINER=`root`@`localhost` PROCEDURE `AvgRestaurantByID`(restaurant_id int)
BEGIN
SELECT `restaurant`.restaurant_rating, AVG(`restaurant`.restaurant_rating)
FROM `restaurant`
WHERE `restaurant`.restaurant_id = restaurant_id;
END