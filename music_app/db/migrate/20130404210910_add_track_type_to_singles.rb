class AddTrackTypeToSingles < ActiveRecord::Migration
  def change
    add_column :singles, :bonus, :integer
  end
end
