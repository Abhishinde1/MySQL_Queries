create database Spotify;
use Spotify;

-- Create User Table

create table User(
userId int ,
username varchar(20),
playlistid int primary key auto_increment 
);

select * from User;

-- Create table Playlist

create table playlist(
id int  ,
playlistname varchar(30),
foreign key (id) references User(playlistid)
);

desc playlist;
select * from playlist;

-- create table track

create table track(
trackid int ,
trackname varchar(30),
playlistId int  ,
foreign key (playlistId) references playlist(id)
);

desc track;
select * from track;

-- Insert values User table

insert into User(userId,username)
values(1,"Abhi");


-- Insert values playlist table

insert into playlist(id,playlistname)
values(1,"arjit singh"),
       (2,"Raftar");
       

-- insert values to track

insert into track(trackid,trackname,playlistId)
values(1,"abcd",2),
       (2,"xyz",2);
   
-- It will fetch 2 playlist id
select * from 
User left join  playlist
on user.playlistid = playlist.id
where user.playlistid = 2;
       
       
       -- it will fetch all the tracks from 2 playlistid
select * from
track  JOIN playlist
ON track.playlistId = playlist.id
where playlist.id = 2;