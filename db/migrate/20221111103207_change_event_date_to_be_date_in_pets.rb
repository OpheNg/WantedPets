class ChangeEventDateToBeDateInPets < ActiveRecord::Migration[6.1]
  def change
    change_column :pets, :event_date, :date
  end
  def up
    change_column :pets, :event_date, :date
  end

  def down
    change_column :pets, :event_date, :datetime
  end
end
