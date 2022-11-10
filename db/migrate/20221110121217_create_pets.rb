class CreatePets < ActiveRecord::Migration[6.1]
  def change
    create_table :pets do |t|
      t.string :specie
      t.string :breed
      t.string :name
      t.string :color
      t.string :age
      t.string :lost_address
      t.string :find_address
      t.string :email
      t.string :tel

      t.timestamps
    end
  end
end
