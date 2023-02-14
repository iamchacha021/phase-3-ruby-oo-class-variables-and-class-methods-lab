require 'pry'

class Song
    @@count = 0 
    @@genres = []
    @@artists = []

    attr_accessor :name, :artist, :genre

    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@count += 1
        @@genres.push(self.genre)
        @@artists.push(self.artist)
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

    def self.genre_count
        genre_count = {}
        @@genres.each do |genre|
        if genre_count[genre]
            genre_count[genre] += 1 
        else
            genre_count[genre] = 1
        end
        end
        genre_count
    end

    def self.artist_count
        artist_count = {}
        @@artists.each do |artist|
        if artist_count[artist]
            artist_count[artist] += 1 
        else
            artist_count[artist] = 1
        end
        end
        artist_count
    end
end

ambush = Song.new("ambush", "Culture", "roots and culture")
mamisa = Song.new("mamisa", "Mose Fan Fan", "rhumba")
rastafari = Song.new("jah rastafari", "Culture", "roots and culture")
frontdoor = Song.new("front door", "Gregory Isaacs", "roots and culture")
harddrugs = Song.new("hard drugs", "Gregory Isaacs", "roots and culture")
papalolo = Song.new("papa lolo", "Mose Fan Fan", "rhumba")
binding.pry