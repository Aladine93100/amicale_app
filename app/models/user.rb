class User < ActiveRecord::Base
	validates :name, presence: true
	validates :phone, presence: true
	has_secure_password
	validates :password, length: { minimum: 6 }
end