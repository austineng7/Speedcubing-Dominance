SELECT r.personName,
-- convert the start date to a year
YEAR(c.start_date) AS year,
-- convert the best times to seconds
ROUND(r.best/100, 2) AS best
FROM Results AS r,
Competitions AS c,
Events AS e
-- join the Competitions table to the Results table
WHERE c.id = r.competitionId
-- join the Events table to the Results table
AND e.id = r.eventId
-- filter Events by name
AND e.name = "3x3x3 Cube"
-- filter Competitions by date
AND YEAR(c.start_date) = 2024
-- filter Results to valid best and average times
AND r.best > 0
-- sort the rows in ascending order of best time, tiebreak is average time
ORDER BY r.best, r.average ASC
-- only return 100 rows
LIMIT 100