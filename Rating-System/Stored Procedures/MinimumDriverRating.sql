CREATE DEFINER=`root`@`localhost` PROCEDURE `MinimumDriverRating`()
BEGIN
SELECT *
FROM rating
WHERE driver_rating = (
	SELECT MIN(driver_rating)
	FROM rating);
END