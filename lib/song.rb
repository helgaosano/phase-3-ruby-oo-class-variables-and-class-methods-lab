class Song

    #Class Variables
    @@count = 0
    @@artists = []
    @@genres = []

    attr_accessor :name, :artist, :genre

    #Instance Methods
    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@count += 1
        @@artists << @artist   #adds artist items at the end of the @@artist array
        @@genres << @genre     #adds genre items at the end of the @@genres array
    end

    def name
        @name
    end

    def artist
        @artist
    end

    def genre
        @genre
    end

    #Class Methods
    def self.count
        @@count
    end

    def self.artists
        @@artists.uniq   # uniq removes duplicate values
    end

    def self.genres
        @@genres.uniq
    end

    def self.genre_count
        hash_genre = Hash.new
         @@genres.each do |genre|
            if hash_genre[genre]
                hash_genre[genre] = hash_genre[genre] + 1
            else
                hash_genre[genre] = 1

            end
         end
         hash_genre
    end

    def self.artist_count
        hash_artist = Hash.new
         @@artists.each do |artist|
            if hash_artist[artist]
                hash_artist[artist] = hash_artist[artist] + 1
            else
                hash_artist[artist] = 1

            end
         end
         hash_artist
    end

end