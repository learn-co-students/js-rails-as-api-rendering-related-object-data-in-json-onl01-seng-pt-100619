class Bird < ApplicationRecord
    has_many :sightings
    has_many :locations, through: :sightings
end
#  references data type on generator doesnt affect the other models