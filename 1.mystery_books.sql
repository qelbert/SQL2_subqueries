select isbn, title
from book
left join genre on book.genre_id = genre.genre_id
where genres = "mystery"; 