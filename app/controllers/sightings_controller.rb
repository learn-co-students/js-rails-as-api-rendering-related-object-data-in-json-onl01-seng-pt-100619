class SightingsController < ApplicationController
    def show
        sighting = Sighting.find_by(id: params[:id])
        if sighting
            render json: sighting.to_json(include: [:bird, :location])
        else
            render json: { message: 'No sighting found with that id' }
        end # custom error

        # sighting = Sighting.find_by(id: params[:id])
        # render json: sighting

        # render json: { id: sighting.id, bird: sighting.bird, location: sighting.location }
        # we set a custom hash and the bird json and location json objects will be nested

        # render json: sighting, include: [:bird, :location]
        # another syntax to acheive the same but it includes all of the attributes of the sighting (ids)

#         render json: sighting.to_json(:include => {
#     :bird => {:only => [:name, :species]},
#     :location => {:only => [:latitude, :longitude]}
#   }, :except => [:updated_at])
#   nested options allow to customize futher the data sent to json
    end

    def index
        sightings = Sighting.all
        render json: sightings, include: [:bird, :location]
        # include works with an array of hashes for the index
        # render json: sightings.to_json(include: [:bird, :location])
        # only, except and include are options of the to_json method
    end
end
