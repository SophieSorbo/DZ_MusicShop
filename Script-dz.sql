CREATE TABLE IF NOT EXISTS Genres (
	genre_id SERIAL PRIMARY KEY
);

CREATE TABLE IF NOT EXISTS Artists (
	artist_id SERIAL PRIMARY KEY,
	nickname VARCHAR(40) NOT NULL
);

CREATE TABLE IF NOT EXISTS GenreArtist (
	genre_id INTEGER REFERENCES Genres(genre_id),
	artist_id INTEGER REFERENCES Artists(artist_id),
	CONSTRAINT pk_genre_artist PRIMARY KEY (genre_id, artist_id)
);

CREATE TABLE IF NOT EXISTS Albums (
	album_id SERIAL PRIMARY KEY,
	album_title VARCHAR(40) NOT NULL,
	year_release date
);

CREATE TABLE IF NOT EXISTS ArtistAlbum (
	artist_id INTEGER REFERENCES Artists(artist_id),
	album_id INTEGER REFERENCES Albums(album_id),
	CONSTRAINT pk_artist_album PRIMARY KEY (artist_id, album_id)
);

CREATE TABLE IF NOT EXISTS Tracks (
	track_id SERIAL PRIMARY KEY,
	album_id INTEGER REFERENCES Albums(album_id),
	track_name VARCHAR(40) NOT NULL,
	duration INTERVAL
);

CREATE TABLE IF NOT EXISTS Collections (
	collection_id SERIAL PRIMARY KEY,
	collection_title VARCHAR(40) NOT NULL,
	collection_year_release date
);

CREATE TABLE IF NOT EXISTS CollectionTrack (
	collection_id INTEGER REFERENCES Collections(collection_id),
	track_id INTEGER REFERENCES Tracks(track_id),
	CONSTRAINT pk_collection_track PRIMARY KEY (collection_id, track_id)
);