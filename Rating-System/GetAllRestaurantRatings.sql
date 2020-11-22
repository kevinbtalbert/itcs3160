CREATE PROCEDURE `GetAllRestuarantRatingS` ()
BEGIN
	SELECT restaurant_id, avg(rating), max(rating), min(rating)
	FROM Campus_Eats_Fall2020.restuarant
    WHERE rating;
END
