class CreateBandArtists < ActiveRecord::Migration
  def change
    create_table :band_artists do |t|
      t.references :artist
      t.references :band

      t.timestamps
    end
    add_index :band_artists, :artist_id
    add_index :band_artists, :band_id
  end
end
