class RemoveDescriptionFromPets < ActiveRecord::Migration[6.1]
  def change
    remove_column :pets, :description, :string
  end
end
