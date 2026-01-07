/*
Set in the gritty 1980s, a valuable briefcase has disappeared from the 
Blue Note Lounge. A witness reported that a man in a trench coat was 
seen fleeing the scene. Investigate the crime scene, review the list of 
suspects, and examine interview transcripts to reveal the culprit.
*/

SELECT * FROM crime_scene
WHERE location LIKE '%Blue Note Lounge%';
-- id: 76
-- date: 19851120
/*
A briefcase containing sensitive documents vanished. 
A witness reported a man in a trench coat with a scar 
on his left cheek fleeing the scene.
*/

SELECT name FROM interviews i
JOIN suspects s
  ON s.id = i.suspect_id
WHERE attire = 'trench coat'
AND transcript IS NOT NULL;
-- Vincent Malone