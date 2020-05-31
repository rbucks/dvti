class Company < ApplicationRecord
  extend FriendlyId
  friendly_id :legal_name, use: :slugged

end
