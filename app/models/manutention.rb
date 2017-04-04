class Manutention < ApplicationRecord
    belongs_to :tipo_servico
    has_many :manuequips
end
