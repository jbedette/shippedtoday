class Ship < ApplicationRecord


	belongs_to :user
	has_many :contracts
  has_many :jobs, through: :contracts

  has_attached_file :avatar,
 :styles => { :medium => "300x300>", :thumb => "200x200>" },
 :default_url => "missing.png"
validates_attachment_content_type :avatar,
:content_type => /\Aimage\/.*\Z/

end
