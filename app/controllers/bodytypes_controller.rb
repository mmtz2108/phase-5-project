class BodytypesController < ApplicationController
    def index 
        types = Bodytype.all 
        render json: types, status: 200
    end

    def show
        type = Bodytype.find_by!(id: params[:id])
        render json: type
    end
end
