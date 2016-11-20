class User < ActiveRecord::Base
	has_secure_password
	validates :email, uniqueness: true, presence: true, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, on: :create }
	validates :password, presence: { message: "Story title is required" }
	validates :password, length: {minimum: 8, maximum: 20}

	def generate_password_reset_token!
    update(password_reset_token: SecureRandom.urlsafe_base64(48))
    end
end
