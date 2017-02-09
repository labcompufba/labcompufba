class Pesquisador < ApplicationRecord
  validates :codigo, presence: true, uniqueness: true 
  validates :nome, presence: true, length: { minimum: 3, maximum: 60 }
end
