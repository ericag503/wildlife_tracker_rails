class Sighting < ActiveRecord::Base

   validates :date, :presence => true
   validates :latitude, :presence => true
   validates :longitude, :presence => true

   belongs_to :specie
end
