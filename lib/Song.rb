class Song
    attr_accessor :name

        @@all = []

    def self.all
        @@all = []
    end

    def intitialize(name)
        @name = name
        @@all << self
       
    end 

    def name
        name 
    end

    def name=(song_name)
        song_name = name
    end

    def self.destroy_all
        self.all
    end

    def save 
        self.save.all
    end

    def self.create
        self.create
    end

end