
-- Artist Table

INSERT INTO artist (name)
VALUES ('070 Shake'),
('Your Old Droog'),
('Danny Brown');

SELECT * FROM artist
ORDER BY name LIMIT 5;

-- Extra Credit

SELECT * FROM artist
ORDER BY name DESC LIMIT 10;

SELECT * FROM artist
WHERE name LIKE 'Black%';

SELECT * FROM artist
WHERE name LIKE '%Black%';

-- Employee Table

SELECT first_name, last_name FROM employee
WHERE city LIKE 'Calgary';

SELECT * FROM employee;

SELECT * FROM employee
WHERE reports_to = 2;

SELECT COUNT(*) FROM employee
WHERE city LIKE 'Lethbridge';


-- Extra Credit

SELECT birth_date, first_name, last_name FROM employee
ORDER BY birth_date DESC LIMIT 1;

SELECT birth_date, first_name, last_name FROM employee
ORDER BY birth_date LIMIT 1;

-- Invoice Table

SELECT COUNT(*) FROM invoice
WHERE billing_country LIKE 'USA';

SELECT total FROM invoice 
ORDER BY total DESC LIMIT 1;

SELECT total FROM invoice 
ORDER BY total LIMIT 1;

SELECT * FROM invoice 
WHERE total > 5
ORDER BY total;

SELECT COUNT(*) FROM invoice
WHERE total < 5;

SELECT SUM(total) FROM invoice;

-- Extra Credit

SELECT COUNT(*) FROM invoice 
WHERE billing_state IN ('CA', 'TX', 'AZ');

SELECT AVG(total) FROM invoice;

-- JOIN Queries (Various Tables)

SELECT *
FROM invoice i
JOIN invoice_line il 
ON i.invoice_id = il.invoice_id
WHERE il.unit_price > 0.99;

customer has first and last name, customer id
invoice has invoice date, total, and customer id

SELECT i.invoice_date AS date, c.first_name AS first, c.last_name AS last, i.total AS total
FROM invoice i 
JOIN customer c 
ON i.customer_id = c.customer_id;

SELECT c.first_name AS first, c.last_name AS last, e.first_name AS rep_first, e.last_name AS rep_last
FROM customer c 
JOIN employee e 
ON c.support_rep_id = e.employee_id;

SELECT a.name AS artist, al.title AS album
FROM artist a
JOIN album al
ON a.artist_id = al.artist_id;

-- Extra Credit

SELECT pl.track_id AS track_id
FROM playlist_track pl
JOIN playlist p
ON pl.playlist_id = p.playlist_id
WHERE name = 'Music';

SELECT t.name AS track_name
FROM track t
JOIN playlist_track pl
ON t.track_id = pl.track_id
WHERE pl.playlist_id = 5; 

SELECT t.name AS track_name, p.name AS playlist
FROM playlist p
JOIN playlist_track pl ON p.playlist_id = pl.playlist_id
JOIN track t ON t.track_id = pl.track_id;

SELECT t.name AS track_name, a.title AS album_title
FROM track t
JOIN genre g ON t.genre_id = g.genre_id
JOIN album a ON a.album_id = t.album_id
WHERE g.name LIKE 'Alternative & Punk';