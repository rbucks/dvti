class AddDefaultStatusToCompany < ActiveRecord::Migration[6.0]
  def change
    change_column_default(:companies, :status, 0)
  end
end
