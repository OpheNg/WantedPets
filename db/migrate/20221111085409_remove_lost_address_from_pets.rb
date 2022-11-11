class RemoveLostAddressFromPets < ActiveRecord::Migration[6.1]
  def change
    remove_column :pets, :lost_address, :string
  end
end
