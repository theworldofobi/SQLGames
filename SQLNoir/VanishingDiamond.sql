/*
At Miami’s prestigious Fontainebleau Hotel charity gala, 
the famous “Heart of Atlantis” diamond necklace suddenly 
disappeared from its display.
*/

SELECT * FROM crime_scene
WHERE location = 'Fontainebleau Hotel';
-- date = 19870520
-- witness 1 famous actor
-- witness 2 consultant, big company, name like '%an%'

SELECT * FROM guest
WHERE (occupation = 'Actor')
OR (occupation LIKE '%Consultant%'
AND name LIKE '%an %');
-- witness 1 = 129, Clint Eastwood
-- witness 2 = 116, Vivian Nair

SELECT * FROM witness_statements
WHERE guest_id IN (116, 129);
-- navy suit, white tie, -R invite, marina dock 3

SELECT * FROM guest g
JOIN marina_rentals mr
  ON mr.renter_guest_id = g.id
JOIN attire_registry ar
  ON ar.guest_id = g.id
WHERE invitation_code LIKE '%-R'
AND dock_number = 3
AND rental_date = 19870520;
-- 105, Mike Manning matches clothing description