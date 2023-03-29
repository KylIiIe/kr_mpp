class Task < ApplicationRecord
  enum status: { waiting: 0, in_progress: 1, completed: 2 }

  validates :name, presence: true
  validates :description, presence: true
  validates :status, presence: true
  validates :status, inclusion: { in: statuses.keys }
end
