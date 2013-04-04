class AddLiveStudioToRecordings < ActiveRecord::Migration
  def change
    add_column :recordings, :live, :integer
  end
end
