/*
A body was found floating near the docks of Coral Bay Marina 
in the early hours of August 14, 1986. Your job, detective, 
is to find the murderer and bring them to justice. This case 
might require the use of JOINs, wildcard searches, and logical 
deduction. Get to work, detective.
*/

SELECT * FROM crime_scene
WHERE date = 19860814
AND location = 'Coral Bay Marina';
-- lives on 300ish "Ocean Drive"
-- first name ends with "ul" and his last name ends with "ez"

SELECT * FROM person p
JOIN interviews i
  ON i.person_id = p.id
WHERE (address LIKE '3%Ocean Drive')
OR (name LIKE '%ul %ez');
-- hotel 19860813, nervous, Sunset

SELECT DISTINCT(name) FROM hotel_checkins hci
JOIN surveillance_records sr
  ON sr.hotel_checkin_id = hci.id
JOIN confessions c
  ON c.person_id = hci.person_id
JOIN person p
  ON p.id = hci.person_id
WHERE hotel_name LIKE '%Sunset%'
AND check_in_date = 19860813
AND hci.id = 55;
--Thomas Brown