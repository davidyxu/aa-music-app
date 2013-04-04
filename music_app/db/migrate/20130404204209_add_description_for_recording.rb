class AddDescriptionForRecording < ActiveRecord::Migration
  def change
    add_column :recordings, :description, :text
  end
end
