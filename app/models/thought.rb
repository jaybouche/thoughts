class Thought < ApplicationRecord
  validates :message, presence: true, length: { maximum: 120, minimum: 3 }
  validates :author, presence: true, length: { maximum: 60, minimum: 3 }
end
