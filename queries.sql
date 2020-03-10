USE `netland`;
-- 1. Welke series hebben een award hebben gewonnen?    
SELECT title,has_won_awards
FROM series
WHERE has_won_awards  = 1;
-- 2. Welke series hebben een cijfer boven de 2.5?
SELECT title,rating
FROM series
WHERE rating >= 2.5;
-- 3. Welke series zijn in Nederland gemaakt én zijn Nederlands gesproken?
SELECT title, country and (language)
FROM series
WHERE country = 'NL' and language = 'NL' ;
-- 4. Welke series hebben minder dan 5 seizoenen?
SELECT title,seasons
FROM series
WHERE seasons >= 5;
-- 5. Wat is het hoogste cijfer dat een serie heeft?
SELECT title,rating
FROM series
WHERE rating >= 5.0; 
-- 6. Welke series hebben minder dan 3 seizoenen of meer dan 20?
SELECT title, seasons
FROM series
WHERE seasons <= 2 or seasons >= 20 ;
-- 7. Welke series hebben de lettercombinatie 'Th' in hun title?
SELECT title 
FROM series
WHERE title = 'th' ; 
-- 8. Welke series **niet** 3 seizoenen hebben?
SELECT title, seasons
FROM series
WHERE seasons != 3;

SELECT * FROM series;
DESCRIBE series;