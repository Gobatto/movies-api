class Movie < ApplicationRecord
  validates :id, uniqueness: true
  validates :title, presence: true, uniqueness: true
    # validates that there are no duplicates

  include PgSearch::Model

  pg_search_scope :search, against: %i[title genre year country]
  # allow a user to enter a query and search across a couple different attributes on models.
  
end
