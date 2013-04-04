class Recording < ActiveRecord::Base
  attr_accessible :name, :live, :band_id, :description

  belongs_to :band
  has_many :singles

  validates :name, :live, :presence => true
end
