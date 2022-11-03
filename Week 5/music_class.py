from pprint import pprint

import sqlalchemy
from sqlalchemy import (Column, Date, ForeignKey, Integer, String,
                        create_engine, select, text)
from sqlalchemy.orm import Session, declarative_base, relationship

Base = declarative_base()

class Album(Base):
    __tablename__ = 'album'
    
    album_id = Column(Integer, primary_key = True)
    album_name = Column(String)
    album_release = Column(Date)
    genre = Column(String)
    
    songs = relationship('Song',back_populates='album')
    artist = relationship('AlbumArtist',back_populates='album')
    
    def __repr__(self):
        return f"{self.album_name}, DOR: {self.album_release}, Genre: {self.genre} Songs: {[x.song_name for x in self.songs]}"

class Artist(Base):
    __tablename__ = 'artist'
    
    artist_id = Column(Integer, primary_key = True)
    artist_name = Column(String)
    
    album = relationship('AlbumArtist',back_populates='artist')

    def __repr__(self):
        return f"{self.artist_name}: {self.album}"

class Song(Base):
    __tablename__ = 'song'
    
    song_id = Column(Integer, primary_key = True)
    song_name = Column(String)
    length_sec = Column(Integer)
    album_id = Column(Integer, ForeignKey('album.album_id'))
    
    album = relationship('Album', back_populates='songs')
    
    def __repr__(self):
        return f"{self.song_name}, Length: {self.length_sec}, Album: {self.album}"
    
class AlbumArtist(Base):
    __tablename__ = 'album_artist'
    
    album_id = Column(Integer, ForeignKey('artist.artist_id'), primary_key = True)
    artist_id = Column(Integer, ForeignKey('album.album_id'), primary_key = True)
    
    album = relationship('Album',back_populates='artist')
    artist = relationship('Artist',back_populates='album')


mysql_connection = "mysql+mysqlconnector://root:root@127.0.0.1:3306/music"
engine = create_engine(mysql_connection, future=True)

with Session(engine) as session:
    album_artist = session.execute(select(AlbumArtist)).all()
    albums = session.execute(select(Album)).all()
    artists = session.execute(select(Artist)).all()
    songs = session.execute(select(Song)).all()
    pprint(albums)
    pprint(artists)
    pprint(songs)
