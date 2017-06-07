class Job < ApplicationRecord
  belongs_to :user
  has_many :assignments
  has_many :boats, through: :assignments

  validates :name, uniqueness: true
end