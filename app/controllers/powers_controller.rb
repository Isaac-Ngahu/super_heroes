class PowersController < ApplicationController
rescue_from ActiveRecord::RecordInvalid,with: :render_record_invalid
rescue_from ActiveRecord::RecordNotFound,with: :render_not_found
    def index
        render json: Power.all,status: :ok
    end
    def show 
        power = find_power
        render json: power,status: :ok
    end
    def update 
        power = find_power
        power.update!(power_params)
        render json: power
    end

    private
    def render_record_invalid(invalid)
        render json: {errors:invalid.record.errors.full_messages},status: :unprocessable_entity
    end
    def find_power
        power = Power.find(params[:id])
    end
    def render_not_found
        render json: {"errors":"Power not found"},status: :not_found
    end
    def power_params
        params.permit(:name,:description)
    end
end
