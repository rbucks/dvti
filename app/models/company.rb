class Company < ApplicationRecord
  include PgSearch::Model
  pg_search_scope :search_all, against: [:legal_name, :location_state, :location_city, :domain, :industries], using: { tsearch: { prefix: true } }

  extend FriendlyId
  friendly_id :legal_name, use: :slugged

  enum status: [:unknown, :closed, :active]
  enum company_type: [:is_private, :is_public, :is_delisted]

end
