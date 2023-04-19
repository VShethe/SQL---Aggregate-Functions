
# SQL: Aggregate_Functions





## Table of Content


**1. SQL: Aggregate_Functions**
 - Count_Function.sql
 
## Project Description

**Refining Data:**
![1](https://user-images.githubusercontent.com/128286364/233052293-0fe40be9-af9e-4c12-89c4-7f8fccd5110d.png)

**1. Count Function**

    SELECT 
        COUNT(*) 
    FROM books;
![2](https://user-images.githubusercontent.com/128286364/233052818-10a240a9-09ff-4fcf-a439-6b477a09db65.png)
  
    SELECT 
        COUNT(DISTINCT author_lname, author_fname) 
    FROM books;
![3](https://user-images.githubusercontent.com/128286364/233052887-f977543d-99c6-4c6a-b059-870ac90c6ab4.png)


**2. Group By:**

    SELECT 
        author_lname, 
        COUNT(*) 
    FROM books 
    GROUP BY author_lname;
![4](https://user-images.githubusercontent.com/128286364/233053012-dbaa34d4-4b65-42b7-a670-b8bf1e5d17ee.png)

    SELECT 
        CONCAT('In ', released_year, ' ', 
        COUNT(*), ' book(s) released') AS year 
    FROM books 
    GROUP BY released_year;
![5](https://user-images.githubusercontent.com/128286364/233053070-27c92414-1522-42a2-b57c-22ee99ad22d5.png)


**3. MIN & MAX:**

    SELECT
        CONCAT(author_fname, ' ', author_lname) AS author,
        MAX(pages) AS 'longest book'
    FROM books
    GROUP BY author_lname, author_fname;
![6](https://user-images.githubusercontent.com/128286364/233053121-f2045771-c806-4783-bcad-5ae9de9f2157.png)


    SELECT 
        author_fname, 
        author_lname, 
    Min(released_year) 
    FROM   books 
    GROUP  BY author_lname, author_fname;
![7](https://user-images.githubusercontent.com/128286364/233053161-0ac078ec-c240-4b04-8474-2e5df78ee340.png)


**4. SUM:**

    SELECT 
        author_fname, 
        author_lname,
	    SUM(pages) 
    FROM books
	GROUP BY author_lname, author_fname;
![8](https://user-images.githubusercontent.com/128286364/233053192-1f5fd4ef-837c-4fe0-87b4-756363b84c71.png)
	


**5. Average:**
 
    SELECT 
        author_fname, author_lname, 
        AVG(pages) 
    FROM books
    GROUP BY author_lname, author_fname;
![9](https://user-images.githubusercontent.com/128286364/233053246-8523f6ef-10cf-457a-8f41-53832543bdf6.png)

    
  

## Installation

To run the program

mysq-ctl cli;
