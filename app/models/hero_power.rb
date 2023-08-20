class HeroPower < ApplicationRecord
    belongs_to :hero
    belongs_to :power
    validates :strength,inclusion: {in:%w[Strong Weak Average]}
    def get_powers
        user.powers
    end
end
