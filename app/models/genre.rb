class Genre < ActiveRecord::Base
    has_many :songs_genres
    has_many :song, through: :song_genres
    has_many :artists, through: :songs

    def slug
        self.name.downcase.gsub(" ","-")
    end
end