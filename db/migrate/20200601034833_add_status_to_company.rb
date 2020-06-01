class AddStatusToCompany < ActiveRecord::Migration[6.0]
  def change
    add_column :companies, :status, :integer
  end
end
