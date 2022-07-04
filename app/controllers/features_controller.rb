class FeaturesController < ApplicationController
    def index 
        features = Feature.all 
        render json: features, status: 200
    end

    def show
        feature = Feature.find_by!(id: params[:id])
        render json: feature
    end
end
