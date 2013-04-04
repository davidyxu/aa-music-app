class CreateRecordings < ActiveRecord::Migration
  def change
    create_table :recordings do |t|
      t.string :name
      t.references :band

      t.timestamps
    end
    add_index :recordings, :band_id
  end
end
