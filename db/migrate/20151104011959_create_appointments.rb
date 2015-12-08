class CreateAppointments < ActiveRecord::Migration
  def change
    create_table :appointments do |t|
      t.datetime :appointment_date
      t.boolean :reminder
      t.text :reason
      t.references :doctor
      t.references :pet

      t.timestamps
    end
    add_index :appointments, :doctor_id
    add_index :appointments, :pet_id
  end
end
