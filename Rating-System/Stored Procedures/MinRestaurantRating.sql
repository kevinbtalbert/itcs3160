CREATE DEFINER=`root`@`localhost` PROCEDURE `MinRestaurantRating`()
BEGIN
SELECT *
FROM rating
WHERE restaurant_rating = (
	SELECT MIN(restaurant_rating)
	FROM rating);
END