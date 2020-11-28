SET SQL_SAFE_UPDATES = 0;

update book set available = 1
where title = "romeo and juliet";

update loan
set date_in = curdate()
where loan_id = (select max(loan_id) where book_id = (select book_id from book where title = "romeo and juliet"));

update patron 
set loan_id = null
where first_name = "Tory" and last_name = "Lees";
