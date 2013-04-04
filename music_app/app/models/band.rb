class Band < ActiveRecord::Base
  attr_accessible :name

  has_many :band_artists
  has_many :artists, :through => :band_artists
  has_many :recordings
  validates :name, :presence => true
end
