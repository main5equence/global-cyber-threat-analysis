-- Preview Data
SELECT *
FROM threats
LIMIT 10;

-- Most Common Cyber Attack Types
SELECT "Attack Type", COUNT(*) as attacks
FROM threats
GROUP BY "Attack Type"
ORDER BY attacks DESC;

-- Top Countries by Cybercrime Financial Loss
SELECT Country,
SUM("Financial Loss (in Million $)") as losses
FROM threats
GROUP BY Country
ORDER BY losses DESC;

-- Losses According to Type of Attack 
SELECT "Attack Type",
SUM("Financial Loss (in Million $)") as total_loss
FROM threats
GROUP BY "Attack Type"
ORDER BY total_loss DESC;

--Most Common Cyber Attacks Sources 
SELECT "Attack Source",
COUNT(*) as incidents
FROM threats
GROUP BY "Attack Source"
ORDER BY incidents DESC;

--Industries Most Targeted by Cyber Attacks
SELECT "Target Industry",
COUNT(*) as attacks
FROM threats
GROUP BY "Target Industry"
ORDER BY attacks DESC;

--Cyber Attacks Over Time
SELECT Year,
COUNT(*) as incidents
FROM threats
GROUP BY Year
ORDER BY Year;

Cyber Attacks Over Time

SELECT Year,
COUNT(*) as incidents
FROM threats
GROUP BY Year
ORDER BY Year;

-- Biggest Single Incidents 
SELECT Country,
Year,
"Attack Type",
"Target Industry",
"Financial Loss (in Million $)"
FROM threats
ORDER BY "Financial Loss (in Million $)" DESC
LIMIT 10;




