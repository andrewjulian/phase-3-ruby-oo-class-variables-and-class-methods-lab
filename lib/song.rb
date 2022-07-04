require "pry"

class Song

  attr_accessor :name, :artist, :genre, :tally

  @@count = 0
  @@artists = []
  @@genres = []

  @@genre_count = {}
  @@artist_count = {}

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@artists << artist
    @@genres << genre
    @@count += 1
  end

  def self.count
    @@count
  end

  def self.artists
    @@artists.uniq
  end

  def self.genres
    @@genres.uniq
  end

  def self.artist_count
    for i in @@artists.uniq do
      @tally = 0
      for j in @@artists do
        if i == j 
          @tally += 1
        end
      end
      @@artist_count[i] = @tally 
    end
    @@artist_count
  end

  def self.genre_count
    for i in @@genres.uniq do
      @tally = 0
      for j in @@genres do
        if i == j 
          @tally += 1
        end
      end
      @@genre_count[i] = @tally 
    end
    @@genre_count
  end

end