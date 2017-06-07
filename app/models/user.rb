class User < ApplicationRecord
  has_many :boats
  has_many :assignments
  has_many :jobs

  validates :username, uniqueness: true
  validates_presence_of :username, :password
end
