class Song < ActiveRecord::Base
	validates :title, :lyrics, :artist, :year, :album, presence: true

end
