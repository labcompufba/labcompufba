class Manutention < ApplicationRecord
    has_many :manuequips
    belongs_to :tipo_servico
end
