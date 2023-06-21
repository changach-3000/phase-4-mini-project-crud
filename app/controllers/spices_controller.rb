class SpicesController < ApplicationController
    # Returns an array of Spices
    def index
        spices = Spice.all
        render json: spices
    end

    # add a new spice
    def create
        spice = Spice.create(title: params[:title],image: params[:image],
        description: params[:description],notes: params[:notes],rating: params[:rating])
        render json:spice ,status: :created
    end

    # update an existing spice
    def update
        spice = Spice.find_by(id: params[:id]) 

        if spice
            spice = Spice.update(title: params[:title],image: params[:image],
            description: params[:description],notes: params[:notes],rating: params[:rating])
           
            render json: spice, status: :created

        end
    end

    # Delete a single spice
    def destroy
        spice = Spice.find_by(id: params[:id]) #value or null

        if spice
            spice.destroy
        end
    end
    

end
