class AddDefaultCompanyTypeToCompany < ActiveRecord::Migration[6.0]
  def change
    change_column_default(:companies, :company_type, 0)
  end
end
