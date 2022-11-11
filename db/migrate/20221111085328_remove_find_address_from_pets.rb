class RemoveFindAddressFromPets < ActiveRecord::Migration[6.1]
  def change
    remove_column :pets, :find_address, :string
  end
end
