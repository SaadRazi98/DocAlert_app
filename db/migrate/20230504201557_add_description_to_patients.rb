class AddDescriptionToPatients < ActiveRecord::Migration[7.0]
  def change
    add_column :patients, :descripition, :string
  end
end
