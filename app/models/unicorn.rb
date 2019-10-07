class Unicorn < ApplicationRecord
  belongs_to :rider
  # validates :rider_id, presence: true

end
