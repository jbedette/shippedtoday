class Ship < ApplicationRecord

	
	# belongs_to :user
	has_many :contracts
  has_many :jobs, through: :contracts
end
