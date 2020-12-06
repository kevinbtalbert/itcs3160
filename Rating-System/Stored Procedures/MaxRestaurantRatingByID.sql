CREATE DEFINER=`root`@`localhost` PROCEDURE `MaxRestaurantRatingByID`(restaurant_id int)
BEGIN
SELECT `restaurant`.restaurant_rating, MAX(`restaurant`.rating)
FROM `restaurant`
WHERE `restaurant`.restaurant_id = restaurant_id;
END