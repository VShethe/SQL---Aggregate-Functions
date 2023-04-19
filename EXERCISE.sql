SELECT COUNT(title) AS 'Number' FROM books;

SELECT released_year, COUNT(title)
	FROM books
	GROUP BY released_year;


SELECT SUM(stock_quantity) AS 'Books in Stock' FROM books;

SELECT CONCAT(author_fname, ' ', author_lname) AS 'author',
	AVG(released_year) FROM books
	GROUP BY author_lname,author_fname;
	
SELECT CONCAT(author_fname, ' ', author_lname) AS 'author'
FROM books
WHERE pages = (SELECT MAX(pages) FROM books);

SELECT CONCAT(author_fname, ' ', author_lname) AS 'author',
pages FROM books 
GROUP BY pages DESC LIMIT 1;



SELECT released_year AS 'years', 
	COUNT(title) AS '# books',
	AVG(pages) AS 'AVG pages'
	FROM books
	GROUP BY released_year;