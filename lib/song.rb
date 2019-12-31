class Song
  extend Memorable::ClassMethods
  include Memorable::InstanceMethods
  extend Findable
  attr_accessor :name
  attr_reader :artist

  @@songs = []

  def initialize
    super
  end

  def song.all
    @@songs
  end
  
   def artist=(artist)
    @artist = artist
  end

  def to_param
    name.downcase.gsub(' ', '-')
  end
end
