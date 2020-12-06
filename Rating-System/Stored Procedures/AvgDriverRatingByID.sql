CREATE DEFINER=`root`@`localhost` PROCEDURE `AvgDriverRatingByID`(driver_id int)
BEGIN
SELECT `driver`.driver_id, AVG(`driver`.rating)
FROM `driver`
WHERE `driver`.driver_id = driver_id;
END