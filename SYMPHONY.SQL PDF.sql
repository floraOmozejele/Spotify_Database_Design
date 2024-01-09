CREATE TABLE Artist (
ArtistID INT PRIMARY KEY,
);

CREATE TABLE Track (
TrackID INT PRIMARY KEY,
TrackTitile VARCHAR (100) NOT NULL,
TrackDate DATE,
TrackGenre VARCHAR (100),
TrackDuration TIME,
ArtistID INT Foreign key references Artist (ArtistID),
);

CREATE TABLE Playlist (
playlistID INT primary key,
);

CREATE TABLE CONTAIN (
TrackID INT foreign key references Track(TrackID),
PlaylistID INT foreign key references Playlist(PlaylistID),
);

CREATE TABLE USERID (
UserID INT primary key,
);

CREATE TABLE LISTEN (
PlaylistID INT foreign key references Playlist(PlaylistID),
UserID INT foreign key references UserID(UserID),
TrackGenre VARCHAR (100),
TrackDuration TIME,
TrackLocation VARCHAR (100),
);

CREATE TABLE FOLLOWERS (
FollowersID INT primary key,
);

CREATE TABLE FOLLOW (
ArtistID INT foreign key references Artist(ArtistID),
FollowersID INT foreign key references Followers(FollowersID),
FollowDate DATE,
);

CREATE TABLE ALBUM (
AlbumID INT primary key,
);

CREATE TABLE COMPILES (
ArtistID INT foreign key references Artist(ArtistID),
AlbumID INT foreign key references Album(AlbumID)
);

CREATE TABLE PLAY (
UserID INT foreign key references UserID(UserID),
AibumID INT foreign key references Album(AlbumID),
PlayDate DATE,
PlayLocation VARCHAR (100),
PlayTime TIMESTAMP,
);




--insert values into the TABLE TRACK
SELECT * FROM Track

INSERT INTO TRACK VALUES
(1101, 'WFH', 1990, 'ROCK', '01:00:00', 150 ),
(1102, 'WHO', 1991, 'BLUE', '02:55:01', 151),
(1103, 'I LOVE YOU', 1999, 'R&B', '12:01:11', 152),
(1104, 'YOU', 2000, 'OLD SCHOOL', '12:55:00', 153),
(1105, 'JESUS', 2001, 'GOSPEL', '02:00:00', 154);





