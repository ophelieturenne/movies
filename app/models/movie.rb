class Movie < ApplicationRecord
  belongs_to :director
  belongs_to :genre

  validates :title, presence: true
  validates :release_date, presence: true
end
