require 'pg_search'
include PgSearch

class Job < ApplicationRecord
  has_many :job_categories
  has_many :categories, through: :job_categories, source: :category

  validates :title, :description, :location, presence: true

  # include PgSearch
  multisearchable :against => [:title, :description, :location, :categories]
end
