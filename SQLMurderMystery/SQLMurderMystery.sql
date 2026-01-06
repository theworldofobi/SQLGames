-- Part 1 Solution: Jeremy Bowers
SELECT p.name, p.id, membership_status, check_in_date, 
       membership_id, plate_number 
FROM get_fit_now_member m

JOIN get_fit_now_check_in c
  ON m.id = c.membership_id
  
JOIN person p
  ON p.id = m.person_id
  
JOIN drivers_license dl
  ON dl.id = p.license_id
    
WHERE membership_status = 'gold'
AND check_in_date = 20180109
AND membership_id LIKE '48Z%'
AND plate_number LIKE '%H42W%';

-- Part 2 Solution: Miranda Priestly
SELECT * 
FROM person p

JOIN drivers_license dl
  ON dl.id = p.license_id
JOIN income i
  ON i.ssn = p.ssn
JOIN facebook_event_checkin fb
  ON fb.person_id = p.id

WHERE gender = 'female'
AND (height BETWEEN 62 AND 69)
AND hair_color = 'red'
AND car_make = 'Tesla'
AND car_model = 'Model S'
AND event_name LIKE '%ymphony%'
ORDER BY i.annual_income DESC;