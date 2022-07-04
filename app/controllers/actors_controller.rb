class ActorsController < ApplicationController
    rescue_from ActiveRecord::RecordInvalid, with: :invalid

    rescue_from ActiveRecord::RecordNotFound, with: :not_found

    def index 
        actors = Actor.all 
        render json: actors, status: 200
    end

    def show
        actor = Actor.find_by!(id: params[:id])
        render json: actor
    end

    def create
        actor = Actor.create!(actor_params)
        render json: actor, status: 201
    end

    def update 
        actor = Actor.find_by!(id: params[:id])
        actor.update!(comment_params)
        render json: actor, status: 201
    end

    def destroy 
        actor = Actor.find_by!(id: params[:id])
        actor.destroy
        render json: {}
    end

    private 

    def invalid errorobj
        render json: { errors: errorobj.record.errors.full_messages }, status: 422
    end

    def not_found
        render json: {error: "User not found"}, status: 404
    end

   def actor_params
    params.permit(:name, :age, :gender)
   end

end
