class CreateSingles < ActiveRecord::Migration
  def change
    create_table :singles do |t|
      t.string :name
      t.references :recording

      t.timestamps
    end
    add_index :singles, :recording_id
  end
end
