class Spell < ApplicationRecord
  validates :name, presence: true
  belongs_to :wizard
end