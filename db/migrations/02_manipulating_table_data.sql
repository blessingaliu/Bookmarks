Listing existing rows in the table
SELECT * FROM bookmarks;

Create four link entries into table
INSERT INTO bookmarks VALUES(1, 'http://www.makersacademy.com');
INSERT INTO bookmarks VALUES(2, 'http://www.askjeeves.com');
INSERT INTO bookmarks VALUES(3, 'http://www.twitter.com/');
INSERT INTO bookmarks VALUES(4, 'http://www.google.com/');


Delete link with URL http://www.askjeeves.com
DELETE FROM bookmarks
 WHERE (id = 2);

 

Update the http://www.twitter.com link to http://www.destroyallsoftware.com using an UPDATE statement.
UPDATE bookmarks
 SET url = 'http://www.destroyallsoftware.com'
 WHERE url = 'http://www.twitter.com/';


