SELECT 
	MAX(driver_rating), 
    MIN(driver_rating), 
    FLOOR(AVG(driver_rating))
FROM
    (SELECT 
        id, COUNT(id) AS driver_rating
    FROM
        rating
    GROUP BY id) AS driverNumbers;