class Artist
    attr_accessor :name
    

        @@all = []
        


    def initialize(name)
        @name = name
        @songs =[]
       
    end 

    def songs
        @songs
        
    
    end

    def add_song(song)

       @song.artist = song
        
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