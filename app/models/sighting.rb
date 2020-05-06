class Sighting < ApplicationRecord
  belongs_to :bird
  belongs_to :location
  #  created with resource so it includes a controller action
  # data type references so it is connecting to two existing models/resources
end
# schema is connected to bird and location by  id indexes
