class CreatePatientImages < ActiveRecord::Migration[7.0]
  def change
    create_table :patient_images do |t|
      t.integer :patient_id
      t.string :url

      t.timestamps
    end
  end
end
