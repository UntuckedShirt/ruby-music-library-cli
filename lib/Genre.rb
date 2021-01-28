class Genre
    extend Concerns::Findable
    attr_accessor :name
    attr_reader :songs
        @@all = []



    def initialize(name)
        @name = name
        @songs = []
        
       
    end 

    def self.all
        @@all
    end


    def artists
        songs.collect {|song| song.artist}.uniq
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