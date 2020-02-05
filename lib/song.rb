require 'pry'

class Song 
  attr_accessor :name, :genre
  attr_reader :artist
  @@all = []
  
  def initialize(name, artist = nil)
    @name = name 
    self.artist = artist if !artist.nil?
  end
  
  def artist
    @artist 
  end
  
  def artist=(artist_obj)
    @artist = artist_obj
    artist_obj.add_song(self)
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

    
    
end