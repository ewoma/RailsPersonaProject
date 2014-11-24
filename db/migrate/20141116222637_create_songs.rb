class CreateSongs < ActiveRecord::Migration
  def change
    create_table :songs do |t|
      t.string :title
      t.text :lyrics
      t.string :artist
      t.string :year
      t.string :album

      t.timestamps
    end
  end
end
