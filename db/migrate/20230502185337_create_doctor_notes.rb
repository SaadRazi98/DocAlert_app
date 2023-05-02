class CreateDoctorNotes < ActiveRecord::Migration[7.0]
  def change
    create_table :doctor_notes do |t|
      t.string :doctor_name
      t.string :comment
      t.integer :patient_id
      t.integer :doctor_id

      t.timestamps
    end
  end
end
