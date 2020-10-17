require 'pry'


class Song
 
  extend Memorable::ClassMethods, Findable::ClassMethods
  include Memorable::InstanceMethods, Paramable::InstanceMethods
  attr_accessor :name
  attr_reader :artist

  @@all = []

 

  def artist=(artist)
    @artist = artist
  end

end
