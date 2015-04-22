class User < ActiveRecord::Base
	has_secure_password
	# att_accessor :password, :password_confirmation 
	# these are part of the has_secure_password
	# validate :password, confirmation: true 
	has_many :reviews
	has_many :products, through: :reviews
	validates :name, presence: true 
end
