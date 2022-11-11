class ChangeDescriptionToBeTextInPets < ActiveRecord::Migration[6.1]
  def change
    change_column :pets, :description, :text
  end

  def up
    change_column :pets, :description, :text
  end

  def down
    change_column :pets, :description, :string
  end
end
