class HeroPowersController < ApplicationController
    wrap_parameters format: []
rescue_from ActiveRecord::RecordInvalid,with: :render_record_invalid

    def create
        hero_power = HeroPower.create(hero_powers_params)
        # render json: hero_power.hero,include: (:powers,{except [:created_at,:updated_at]}) ,except:[:created_at,:updated_at],status: :created
        hero_power = HeroPower.create(hero_powers_params)
    render json: {
        id: hero_power.hero.id,
        name: hero_power.hero.name,
        super_name: hero_power.hero.super_name,
        powers: hero_power.hero.powers.map do |power|
        {
            id: power.id,
            name: power.name,
            description: power.description
        }
        end
    }, status: :created
    end



    private
    def hero_powers_params
        params.permit(:strength,:hero_id,:power_id)
    end
    def render_record_invalid(invalid)
        render json: {errors:invalid.record.errors.full_messages}
    end
    def hero_with_powers(hero)
    hero_with_powers ={
      id: hero.id,
      name: hero.name,
      super_name: hero.super_name,
      powers: hero.powers.map do |power|
        {
          id: power.id,
          name: power.name,
          description: power.description
        }
        end
        }
    end
end
