class Pet < ApplicationRecord
  OPTIONS = ['Found', 'Lost']

validates_inclusion_of :status, :in => OPTIONS
end

# ✗ rails g migration AddStatusToPets status
