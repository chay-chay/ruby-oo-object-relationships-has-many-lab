class Song
    attr_accessor :name, :artist
    @@all = []
    def initialize(name)
        @name = name
        @@all << self
    end
    def self.all
        @@all
    end
    #artist_name
    #knows the name of its artist
    #returns nil if the song does not have an artist
    def artist_name
       if artist
        artist.name
       end
    end
end