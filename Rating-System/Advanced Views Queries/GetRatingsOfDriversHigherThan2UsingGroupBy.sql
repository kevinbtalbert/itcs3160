SELECT 
    driver_id, 
    rating
FROM
    driver
GROUP BY driver_id
HAVING rating > 2;