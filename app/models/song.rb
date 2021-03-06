class Song < ActiveRecord::Base
	has_many :comments, dependent: :destroy
	validates :title, :lyrics, :artist, :year, :album, :song, presence: true
	mount_uploader :song, SongUploader

end
