CREATE DEFINER=`root`@`localhost` PROCEDURE `MinRestaurantRatingByID`(restaurant_id int)
BEGIN
SELECT `restaurant`.restaurant_rating, MIN(`restaurant`.restaurant_rating)
FROM `restaurant`
WHERE `restaurant`.restaurant_id = restaurant_id;
END