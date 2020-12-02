Select t1.first_name, t1.last_name, t2.genres
from 
(SELECT first_name, last_name, book_id from patron inner join loan on patron.loan_id = loan.loan_id where loan.loan_id is not null) as t1, 
(Select book_id, genres from genre right join book on genre.genre_id = book.genre_id) as t2
where t1.book_id = t2.book_id
