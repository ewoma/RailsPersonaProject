class Song < ActiveRecord::Base
	has_many :comments, dependent: :destroy
	validates :title, :lyrics, :artist, :year, :album, presence: true

end
