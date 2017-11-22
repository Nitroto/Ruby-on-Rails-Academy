class Category < ApplicationRecord
  has_many :courses, dependent: :destroy
  validates :name, presence: true, length: { in: 3..30 }
end
