class Movie < ApplicationRecord
  has_many :schedules

  validates :name, uniqueness: true

  scope :keyword, -> (keyword) { where('name LIKE ? or description LIKE ?', "%#{keyword}%", "%#{keyword}%") }
  scope :is_showing, -> (is_showing) { where(is_showing: is_showing) unless is_showing === "all" }
end
