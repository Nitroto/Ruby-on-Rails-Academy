class Course < ApplicationRecord
  belongs_to :category
  has_and_belongs_to_many :students

  validates :name, presence: true, length: { in: 3..50 }
  validates :name, uniqueness: { case_sensitive: false, scope: [:level, :category_id] }
  validates :number_of_maximum_students, numericality: true
  validates :category_id, presence: true

  def complete?
    number_of_maximum_students.present? && students.count >= number_of_maximum_students
  end

  def potential?
    number_of_maximum_students.present? && students.count < min_participants
  end

  def actual?
    !potential?
  end
end
