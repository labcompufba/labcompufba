class Labequip  < ApplicationRecord
    belongs_to :equipamento
    belongs_to :laboratorio
    has_many   :manuequips
end
