class Pet < ApplicationRecord
  OPTIONS = [['Found', 'found'], ['Lost', 'lost']]

validates_inclusion_of :status, :in => OPTIONS
end

# ✗ rails g migration AddStatusToPets status
