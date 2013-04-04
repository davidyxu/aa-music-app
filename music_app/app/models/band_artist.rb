class BandArtist < ActiveRecord::Base
  attr_accessible :band_id, :artist_id
  belongs_to :artist
  belongs_to :band
  validates :artist, :band, :presence => true
end
