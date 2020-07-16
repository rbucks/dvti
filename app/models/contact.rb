class Contact < ApplicationRecord
  enum topic: [:general, :privacy, :support, :press]
end
