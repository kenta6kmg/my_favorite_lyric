class CreateLyrics < ActiveRecord::Migration[6.0]
  def change
    create_table :lyrics do |t|
      t.string :lyric
      t.string :song
      t.string :artist
      t.timestamps
    end
  end
end
