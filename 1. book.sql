create table book (
book_id int auto_increment primary key,
author_id int,
title varchar(255),
isbn int,
available bool,
genre_id int
);