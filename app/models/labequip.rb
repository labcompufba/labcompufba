class Labequip  < ActiveRecord::Base
    belongs_to :equipamento
    belongs_to :laboratorio
end
