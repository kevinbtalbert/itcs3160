CREATE DEFINER=`root`@`localhost` PROCEDURE `MinDriverByID`(driver_id int)
BEGIN
SELECT `driver`.driver_id, (`driver`.rating)
FROM `driver`
WHERE `driver`.driver_id = driver_id;
END