class ChangeIndustryGroupsToArray < ActiveRecord::Migration[6.0]
  def change
    remove_column :companies, :industry_group
    add_column :companies, :industry_groups, :text, array: true
    add_column :companies, :industries, :text, array: true
  end
end
