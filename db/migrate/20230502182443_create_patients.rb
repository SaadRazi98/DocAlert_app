class CreatePatients < ActiveRecord::Migration[7.0]
  def change
    create_table :patients do |t|
      t.integer :patient_id
      t.integer :doctor_id
      t.integer :age
      t.string :medical_category
      t.string :patient_name

      t.timestamps
    end
  end
end
