class Manutention < ApplicationRecord
    belongs_to :tiposervico
    has_many :manuequips
end
