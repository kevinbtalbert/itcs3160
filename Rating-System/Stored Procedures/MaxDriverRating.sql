CREATE DEFINER=`root`@`localhost` PROCEDURE `MaxDriverRating`()
BEGIN
SELECT *
FROM rating
WHERE driver_rating = (
	SELECT MAX(driver_rating)
	FROM rating);
END