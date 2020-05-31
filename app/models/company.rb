class Company < ApplicationRecord
  include PgSearch::Model
  pg_search_scope :search_all, against: [:legal_name, :location_state, :location_city, :domain], using: { tsearch: { prefix: true } }

  extend FriendlyId
  friendly_id :legal_name, use: :slugged

end
