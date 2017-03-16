class Laboratorio < ActiveRecord::Base
    belongs_to :instituto
    has_many:labequips
end
