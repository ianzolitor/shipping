class Job < ApplicationRecord
  belongs_to :user
  has_many :assignments
  has_many :boats, through: :assignments

  validates :name, uniqueness: true
  validates :cost, :numericality => { :greater_than_or_equal_to => 1000 }
end
