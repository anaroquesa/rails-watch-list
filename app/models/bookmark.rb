class Bookmark < ApplicationRecord
  validates :movie, presence: true
  validates :list, presence: true
  validates :comment, length: { minimum: 6 }
  belongs_to :movie
  belongs_to :list
  validates_uniqueness_of :movie, scope: :list
end
