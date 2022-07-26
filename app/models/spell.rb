class Spell < ApplicationRecord
    validates :name, presence: true 
  
    belongs_to :wizard
    # validates :wizard_id, presence: true
end
