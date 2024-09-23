create database spotify;
use spotify;

CREATE TABLE spotify (
    artist VARCHAR(255),
    track VARCHAR(255),
    album VARCHAR(255),
    album_type VARCHAR(50),
    danceability FLOAT,
    energy FLOAT,
    loudness FLOAT,
    speechiness FLOAT,
    acousticness FLOAT,
    instrumentalness FLOAT,
    liveness FLOAT,
    valence FLOAT,
    tempo FLOAT,
    duration_min FLOAT,
    title VARCHAR(255),
    channel VARCHAR(255),
    views FLOAT,
    likes BIGINT,
    comments BIGINT,
    licensed BOOLEAN,
    official_video BOOLEAN,
    stream BIGINT,
    energy_liveness FLOAT,
    most_played_on VARCHAR(50)
);

select * from spotify ;

----15 Practice Questions------


--1)Retrieve the names of all tracks that have more than 1 billion streams.

select track from spotify where stream > 1000000000 ;



-----2)List all albums along with their respective artists.

select album ,artist from spotify;


----3)Get the total number of comments for tracks where licensed = TRUE.

select sum(comments) as total_number_of_comments from spotify where  licensed = true ;

-----4)Find all tracks that belong to the album type single.

select track ,album from spotify where album_type = 'single';

---5)Count the total number of tracks by each artist.

select ARTIST,count(TRACK) from spotify group by 1;