class AddCompCaseIdToDevices < ActiveRecord::Migration[5.0]
  def change
    add_column :devices, :comp_case_id, :integer
  end
end
