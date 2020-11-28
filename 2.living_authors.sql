select title, first_name, last_name
from book
left join author on book.author_id = author.author_id
where deathday is null; 