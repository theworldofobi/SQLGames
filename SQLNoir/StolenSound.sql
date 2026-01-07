/*
In the neon glow of 1980s Los Angeles, the West Hollywood Records 
store was rocked by a daring theft. A prized vinyl record, worth 
over $10,000, vanished during a busy evening, leaving the store 
owner desperate for answers. Vaguely recalling the details, you 
know the incident occurred on July 15, 1983, at this famous store. 
Your task is to track down the thief and bring them to justice.
*/

SELECT * FROM crime_scene
WHERE type = 'theft'
AND location = 'West Hollywood Records';
-- id: 65
-- date: 19830715
-- A prized vinyl record was stolen from the store during a busy evening.

SELECT * FROM witnesses
WHERE crime_scene_id = 65;
-- man, red bandana, gold watch

SELECT name, transcript FROM suspects s
JOIN interviews i
  ON i.suspect_id = s.id
WHERE bandana_color = 'red'
AND accessory = 'gold watch';
-- Rico Delgado