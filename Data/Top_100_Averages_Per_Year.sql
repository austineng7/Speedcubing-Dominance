SELECT r.personName,
-- convert the start date to a year
YEAR(c.start_date) AS year,
-- convert the average times to seconds
ROUND(r.average/100, 2) AS average
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
AND YEAR(c.start_date) = 2023
-- filter Results to valid average times
AND r.average > 0
-- sort the rows in ascending order of best average time, with tiebreaker as best solve
ORDER BY r.average, r.best ASC
-- only return 100 rows
LIMIT 100