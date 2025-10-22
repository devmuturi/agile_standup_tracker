class Account < ApplicationRecord
  has_many :users
  validates :name, presence: true, uniqueness: true
  resourcify
end
