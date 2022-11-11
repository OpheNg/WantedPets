class ChangeEventDateToBeDateInPets < ActiveRecord::Migration[6.1]
  def change
    change_column :pets, :event_date, :date
  end
end
