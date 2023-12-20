PROMPT  Welcome to our  script. This report will look up data
PROMPT using the room number you provide.
PROMPT

ACCEPT CRUISE_NAME PROMPT 'Enter a room number: '
SELECT CRUISE_NAME, CAPTAIN_ID, STATUS
FROM cruises
WHERE CRUISE_NAME = &vRoomNumber;
PROMPT Remember, you asked for the room number &vRoomNumber;
