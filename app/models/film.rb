class Film < ApplicationRecord
  extend FriendlyId
  friendly_id :name, use: :slugged
end
