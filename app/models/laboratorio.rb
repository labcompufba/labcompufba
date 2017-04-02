class Laboratorio < ApplicationRecord
    belongs_to :instituto
    belongs_to :programa
    has_many :labequips
end
