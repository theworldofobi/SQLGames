-- SQLPD LEVEL ONE: SQL INTERN

/*
A hacked site subscribers' details have been surfaced on a darknet
forum. Please submit all subscribers' details
*/
SELECT * FROM subscribers;

/*
A hacked site subscribers' details have been surfaced on a darknet
forum. Please submit all subscribers' full names, number of purchases,
and mailing addresses' details.
*/
SELECT FullName, NumberOfPurchases, MailingAddress
FROM subscribers;

/*
A mailing list of an illegal online service was sent to the SQLPD
hot-line. Please submit all records given names and surnames' details.
*/
SELECT GivenName, Surname FROM mailing_list;

/*
White hat hacker has sent SQLPD exposed members' details of a shady
site connected to various persons of interest. Please submit all 
members' username details. Please make sure there are no duplicates.
*/
SELECT DISTINCT Username FROM members;

/*
A mailing list of an illegal online service was sent to the SQLPD
hot-line. Please submit all records' details sorted by email addresses
in ascending order.
*/
SELECT * FROM mailing_list
ORDER BY EmailAddress;

/*
An illegal site's server were seized in a recent operation. Please
submit all users' details sorted by access times in descending order.
*/
SELECT * FROM users
ORDER BY AccessTime DESC;

/*
A mailing list of an illegal online service was sent to the SQLPD
hot-line. Please submit all entries emails, first names, and join
dates details sorted by emails in descending order. Please make sure
there are no duplicates.
*/
SELECT DISTINCT Email, FirstName, Joined FROM mailing_list
ORDER BY Email DESC;

/*
White hat hacker has sent SQLPD exposed members' details of a shady
site connected to various persons of interest. Please submit all
members' member since dates and number of purchases' details sorted 
by member since dates in ascending order and then by number of
purchases in descending order
*/
SELECT MemberSince, Purchases FROM members
ORDER BY MemberSince ASC, Purchases DESC;

/*
An illegal site's server were seized on a recent operation. Please
submit the top 5 users' details when sorted by last access times in
descending order and then by given name in descending order.
*/
SELECT * FROM users
ORDER BY LastAccess DESC, GivenName DESC
LIMIT 5;

/*
An illegal site's server were seized on a recent operation. Please
submit the top 5 users' last names, emails, and first names when 
sorted by emails in descending order and then by first names in 
descending order. Please make sure there are no duplicates.
*/
SELECT DISTINCT LastName, Email, FirstName FROM users
ORDER BY Email DESC, FirstName DESC
LIMIT 5;

/*
White hat hacker has sent SQLPD exposed subscribers' details of 
a shady site connected to various persons of interest. Please 
submit the top 20 subscribers subscription dates, password hashes 
and usernames' details when sorted by usernames in ascending order 
and then by subscription dates in ascending order. Please make sure 
there are no duplicates.
*/
SELECT DISTINCT SubscriptionDate, PasswordHash, Username
FROM subscribers
ORDER BY Username, SubscriptionDate
LIMIT 20;
