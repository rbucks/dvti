require 'csv'

namespace :companies do
  desc "Import companies into postgresql"
  task import: :environment do
    f = File.open('public/companies.csv')
    csv = CSV.parse(f.read, headers: true)
    csv.each do |co|
      domain = co['Website'].present? ? URI.parse(co['Website']).host.gsub('www','') : nil
      Company.create(legal_name: co["Organization Name"],
                     industries: co['Industries'].to_s.split(',').map{ |c| c.strip },
                     industry_groups: co["Industry Groups"].to_s.split(',').map{ |c| c.strip },
                     location_city: co["Headquarters Location"].to_s.split(",").first,
                     description: co['Full Description'],
                     annual_revenue: co['Estimated Revenue Range'],
                     founded_year: co["Founded Date"].to_s.split('-').first,
                     social_linkedin: co["LinkedIn"],
                     social_facebook: co["Facebook"],
                     social_twitter: co["Twitter"],
                     status: co['Operating Status'].to_s.downcase,
                     domain: domain,
                     employee_number: co["Number of Employees"],
                     raised: co["Total Funding Amount Currency (in USD)"],
                     ticker: co["Stock Symbol"],
                     found_emails: [co["Contact Email"]],
                     company_type: "is_#{co['IPO Status'].to_s.downcase}"
                    )
    end
  end
end
