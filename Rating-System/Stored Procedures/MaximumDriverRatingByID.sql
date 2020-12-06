CREATE DEFINER=`root`@`localhost` PROCEDURE `MaximumDriverRatingByID`(driver_id int)
BEGIN
SELECT `driver`.driver_id, MAX(`driver`.rating)
FROM `driver`
WHERE `driver`.driver_id = driver_id;
END