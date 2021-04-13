class Wizard < ApplicationRecord
  validates :name, presence: true
  validates :title, presence: true
  validates :age, presence: true
end
