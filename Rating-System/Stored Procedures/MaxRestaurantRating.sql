CREATE DEFINER=`root`@`localhost` PROCEDURE `MaxRestaurantRating`()
BEGIN
SELECT *
FROM rating
WHERE restaurant_rating = (
	SELECT MAX(restaurant_rating)
	FROM rating);
END