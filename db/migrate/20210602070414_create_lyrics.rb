class CreateLyrics < ActiveRecord::Migration[6.0]
  def change
    create_table :lyrics do |t|
      t.string     :lyric,  null: false
      t.string     :song,   null: false
      t.string     :artist, null: false
      t.references :user,   forgin_key: true
      t.timestamps
    end
  end
end
