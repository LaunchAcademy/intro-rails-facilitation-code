class BalloonAnimal < ApplicationRecord
  has_many :reviews

  validates :animal, presence: true
  # validates :color, presence: true
end
