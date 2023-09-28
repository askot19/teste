SELECT w.id
    , wp.age
    , w.coins_needed
    , w.power
FROM  Wands AS w, (SELECT power, code, MIN(coins_needed) AS min_price FROM Wands GROUP BY power, code) AS g, Wands_Property AS wp
WHERE w.power = g.power
AND w.code = g.code
AND w.coins_needed = g.min_price
AND wp.is_evil = 0
AND wp.code = g.code
ORDER BY w.power DESC, wp.age DESC;  
