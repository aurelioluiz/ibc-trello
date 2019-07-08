class Board < ApplicationRecord
  has_many :tasks
  validates :title, presence: true

  accepts_nested_attributes_for :tasks
end
