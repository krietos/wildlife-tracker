class Sighting < ActiveRecord::Base
  validates :location, :presence => true
  validates :time, :presence => true
  validates :date, :presence => true
  belongs_to :species
  belongs_to :region


end
