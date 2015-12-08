class CreatePets < ActiveRecord::Migration
  def change
    create_table :pets do |t|
      t.string :name
      t.string :type
      t.string :breed
      t.integer :age
      t.string :weight
      t.references :customer

      t.timestamps
    end
    add_index :pets, :customer_id
  end
end
