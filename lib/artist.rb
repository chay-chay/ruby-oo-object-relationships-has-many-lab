class Artist
    attr_accessor :name
    @@all = []
    def initialize(name)
        @name = name
        @@all << self
    end
    def self.all
        @@all
    end
    #add_song
    #takes in an argument of a song and associates that song with the artist by telling the song that it belongs to that artist (FAILED - 2)
    def add_song(song)
        song.artist = self
    end
    #add_song_by_name
    #takes in an argument of a song name, creates a new song with it and associates the song and artist (FAILED - 1)
    def add_song_by_name(name)
        song = Song.new(name) #set var "song" from what I wanted
        song.artist = self #set var "song" from what I wanted
    end
    def songs
        Song.all.select {|song|song.artist = self} #set var "song" from what I wanted
    end
    #.song_count
    #is a class method that returns the total number of songs associated to all existing artists (FAILED - 2)
    def self.song_count
        Song.all.count
    end
end