class CreateCompanies < ActiveRecord::Migration[6.0]
  def change
    create_table :companies do |t|
      t.string "domain"
      t.string "title"
      t.string "description"
      t.string "keywords"
      t.string "location_state"
      t.string "location_city"
      t.integer "employee_number_from"
      t.integer "employee_number_to"
      t.integer "sic_code"
      t.float "annual_revenue"
      t.string "social_linkedin"
      t.string "social_facebook"
      t.string "social_twitter"
      t.string "found_emails", array: true
      t.string "legal_name"
      t.integer "company_type"
      t.string "tags", array: true
      t.string "industry_group"
      t.string "industry"
      t.string "sub_industry"
      t.integer "founded_year"
      t.string "location_street_number"
      t.string "location_street_name"
      t.string "location_zip"
      t.string "location_state_code"
      t.string "location_country"
      t.string "location_country_code"
      t.float "lat"
      t.float "lng"
      t.string "logo_url"
      t.string "ticker"
      t.integer "alexa_us_rank"
      t.integer "alexa_global_rank"
      t.integer "google_rank"
      t.integer "employee_number"
      t.float "market_cap"
      t.float "raised"
      t.integer "fortune_1000_rank"

      t.timestamps
    end
  end
end
