class Pet < ApplicationRecord
  OPTIONS = ['Found', 'Lost']

validates_inclusion_of :status, :in => OPTIONS
geocoded_by :address
after_validation :geocode, if: :will_save_change_to_address?
end

# ✗ rails g migration AddStatusToPets status
