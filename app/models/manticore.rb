class Manticore < ApplicationRecord 
    validates :name, presence: true 
    validates :ferocity, presence: true
end