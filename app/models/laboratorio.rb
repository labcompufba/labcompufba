class Laboratorio < ApplicationRecord
    belongs_to :instituto
    has_many :labequips
end
