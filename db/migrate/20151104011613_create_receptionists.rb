class CreateReceptionists < ActiveRecord::Migration
  def change
    create_table :receptionists do |t|
      t.string :name
      t.string :email

      t.timestamps
    end
  end
end
