class Song
    attr_accessor :name

        @@all = []



    def initialize(name, artist=nil)
        @name = name
        @artist = artist
       
    end 

    def artist
        @artist

    end

    def artist=(artist)
        @artist = artist
    end

    def self.all
        @@all
    end

    def self.destroy_all
        @@all = []
    end

    def save 
        @@all << self
    end

    def self.create(song_name)
        new_song = self.new(song_name)
        new_song.save
        new_song
    end
    
end