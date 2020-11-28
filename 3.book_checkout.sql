SET SQL_SAFE_UPDATES = 0;

update book set available = 0
where title = "romeo and juliet";

insert into loan (patron_id, date_out,book_id)
values (
(select patron_id from patron where first_name = "Tory" and last_name = "Lees"),
curdate(),
(select book_id from book where title = "romeo and juliet")
);

update patron 
set loan_id = (select max(loan_id) from loan where book_id = (select book_id from book where title = "romeo and juliet"))
where first_name = "Tory" and last_name = "Lees";
