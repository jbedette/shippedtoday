class Job < ApplicationRecord
  has_and_belongs_to_many :ships
  has_many :contracts
  has_many :ships, through: :contracts
end
