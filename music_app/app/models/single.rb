class Single < ActiveRecord::Base
  attr_accessible :name, :recording_id, :bonus

  belongs_to :recording
  validates :name, :bonus, :presence => true
end
