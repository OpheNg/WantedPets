class AddSituationToPets < ActiveRecord::Migration[6.1]
  def change
    add_column :pets, :situation, :string
  end
end
