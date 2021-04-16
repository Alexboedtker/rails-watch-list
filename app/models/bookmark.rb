class Bookmark < ApplicationRecord
  belongs_to :list
  belongs_to :movie

  validates :comment, length: { minimum: 6 }
  validates :movie, uniqueness: { scope: :list_id, message: "This Movie is already in a list" }
end
