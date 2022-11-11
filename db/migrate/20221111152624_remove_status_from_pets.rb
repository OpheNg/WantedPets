class RemoveStatusFromPets < ActiveRecord::Migration[6.1]
  def change
    remove_column :pets, :status, :string
  end
end
