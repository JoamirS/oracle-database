PROMPT  Welcome to our  script. This report will look up data
PROMPT using the room number you provide.
PROMPT

SELECT * FROM CRUISES;

ACCEPT Cruise_name_id PROMPT 'Enter a cruise id: '

SELECT CRUISE_NAME, CAPTAIN_ID, STATUS
FROM cruises
WHERE CRUISE_NAME = '&Cruise_name_id';
-- PROMPT Remember, you asked for the room number &vRoomNumber;

-- Joamir Moraes
