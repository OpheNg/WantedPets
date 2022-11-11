class ChangeDescriptionToBeTextAreaInPets < ActiveRecord::Migration[6.1]
  def change
    change_column :pets, :description, :text_area
  end

  def up
    change_column :pets, :description, :text_area
  end

  def down
    change_column :pets, :description, :string
  end
end
