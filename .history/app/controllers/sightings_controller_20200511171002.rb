class SightingsController < ApplicationController

    def show
        sighting = Sighting.find_by(id: params[:id])
        render json: sighting, include: [:bird, :location], except: [:updated_at]
      end
        else
          render json: { message: 'No sighting found with that id' }
        end
      end

end
