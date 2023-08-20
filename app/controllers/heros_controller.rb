class HerosController < ApplicationController
rescue_from ActiveRecord::RecordNotFound, with: :render_not_found
    def index
        heros = Hero.all
        render json:heros,status: :ok
    end
    def show
        hero = find_hero
        render json: hero,include: :powers,status: :ok
    end

    private
    def heros_params
        params.permit(:name,:super_name)
    end
    def find_hero
        hero = Hero.find(params[:id])
    end
    def render_not_found
        render json: {"error":"Hero not found"}
    end
end
