require 'pry'


class Artist
  extend Memorable::ClassMethods, Findable::ClassMethods
  include Memorable::InstanceMethods, Paramable::InstanceMethods
  attr_accessor :name
  attr_reader :songs

  @@all = []

  def initialize
    super
    @songs = []
  end


  def add_song(song)
    @songs << song
    song.artist = self
  end

  def add_songs(songs)
    songs.each { |song| add_song(song) }
  end

  
end
