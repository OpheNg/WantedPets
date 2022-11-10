class AddInfoToPets < ActiveRecord::Migration[6.1]
  def change
    add_column :pets, :description, :string
    add_column :pets, :owner, :string
  end
end
