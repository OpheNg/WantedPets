class AddColumnToPets < ActiveRecord::Migration[6.1]
  def change
    add_column :pets, :event_date, :datetime
  end
end
