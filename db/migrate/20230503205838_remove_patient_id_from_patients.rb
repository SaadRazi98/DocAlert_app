class RemovePatientIdFromPatients < ActiveRecord::Migration[7.0]
  def change
    remove_column :patients, :patient_id, :integer
  end
end
