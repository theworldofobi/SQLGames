-- SQLPD LEVEL TWO: JUNIOR SQL INVESTIGATOR

/*
A mailing list of an illegal online service was sent to the 
SQLPD hot-line. Please submit all records with 6 password changes.
*/
SELECT * FROM mailing_list
WHERE PassChangeCount = 6;

/*
A mailing list of an illegal online service was sent to the SQLPD 
hot-line. Please submit all entries that have more than 3 children.
*/
SELECT * FROM mailing_list
WHERE Children > 3;

/*
An illegal site's servers were seized in a recent operation. Please 
submit all users that have at most 76 downloads.
*/
SELECT * FROM users
WHERE Downloads <= 76;

/*
A mailing list of an illegal online service was sent to the SQLPD 
hot-line. Please submit all records that do not have 5 password changes.
*/
SELECT * FROM mailing_list
WHERE PasswordChanges != 5;

/*
A hacked site members' details have surfaced on a darknet forum. Please 
submit all members with joined on dateson June 3rd 2024.
*/
SELECT * FROM members
WHERE JoinedOn = '2024-06-03';

/*
A mailing list of an illegal online service was sent to the SQLPD 
hot-line. Please submit all records with join dates after April 17th 2024.
*/
SELECT * FROM mailing_list
WHERE JoinDate > '2024-04-17';

/*
A mailing list of an illegal online service was sent to the SQLPD hot-line. 
Please submit all entries with join dates that came before or on May 23rd 2023.
*/
SELECT * FROM mailing_list
WHERE Joined <= '2023-05-23';

/*
An illegal site's servers were seized in a recent operation. Please submit 
all users with access times of January 6th 2026 at 4:00PM.
*/
SELECT * FROM users
WHERE AccessTime = '2026-01-06 16:00:00';

/*
An illegal site's servers were seized in a recent operation. Please submit 
all users with last access times before November 25th 2025 at 3:22AM.
*/
SELECT * FROM users
WHERE LastAccess < '2025-11-25 03:22:00';

/*
An illegal site's servers were seized in a recent operation. Please submit 
all users that have a family name of Simmons.
*/
SELECT * FROM users
WHERE FamilyName = 'Simmons';

/*
A mailing list of an illegal online service was sent to the SQLPD hot-line. 
Please submit all records that do not have a email address of 
sandra.thompson@hotmail.com.
*/
SELECT * FROM mailing_list
WHERE EmailAddress != 'sandra.thompson@hotmail.com';

/*
A mailing list of an illegal online service was sent to the SQLPD hot-line. 
Please submit all entries with 3, 1 or 0 promotions sent.
*/
SELECT * FROM mailing_list
WHERE Promotions IN (0, 1, 3);

/*
A mailing list of an illegal online service was sent to the SQLPD hot-line. Please submit all entries 
without 5, 2 or 10 password changes.
*/
