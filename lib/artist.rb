require 'pry'

class Artist
  attr_accessor :name, :songs
  @@all = []
  
  def initialize(name)
    @name = name
    @songs = []
  end
  
  def self.all
    @@all
  end
  
  def self.destroy_all
    @@all.clear
  end
  
  def save
    @@all << self 
  end
  
  def self.create(name)
    song = self.new(name)
    @@all << song 
    song
  end
  
  def songs
    @songs
  end
  
  def add_song(song)
  # Currently creating a loop --> Song#artist= calls Artist#add_song, 
  # which calls Song#artist=...
    if song.artist.nil?
      song.artist = self
    end
    @songs << song if !@songs.include?(song)
  end
  
  
end 