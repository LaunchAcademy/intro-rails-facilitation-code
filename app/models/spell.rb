class Spell < ApplicationRecord
  belongs_to :wizard, optional: true

end
