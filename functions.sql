
SELECT o.id
FROM orders AS o
WHERE EXISTS(
    SELECT c.email
    FROM customers as c
    WHERE o.customer_id = c.id AND c.email = 'max@test.com'
);



SELECT weekday_nr,
    CASE WHEN weekday_nr = 1 THEN 'Monday'
        WHEN weekday_nr = 2 THEN 'Tuesday'
        WHEN weekday_nr = 3 THEN 'Wednesday'
        WHEN weekday_nr = 4 THEN 'Thursday'
        WHEN weekday_nr = 5 THEN 'Friday'
        WHEN weekday_nr = 6 THEN 'Saturday'
        ELSE 'Sunday'
    END
FROM (
    SELECT WEEKDAY(last_checkin) + 1 AS weekday_nr
    FROM memberships
) AS weekday_numbers;



SELECT first_name
FROM memberships
WHERE first_name LIKE 'J____';


SELECT first_name LIKE '__o%', first_name
FROM memberships;