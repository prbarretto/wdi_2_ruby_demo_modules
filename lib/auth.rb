module GA
	module LoginFailed < StandardError
		module Authenticator
			def self.login(email_address, password)
				user_entry = User.find_by_email(email_address)
				raise LoginFailed, "failed login for #{email_address}" if user_entry == nil

				user_email = user_entry.split(':')[0]
				user_hash = user_entry.split(':')[1]
				user_salt = user_entry.split(':')[2]

				new_password_hash = BCrypt::Engine.hash_secret(password, user_salt)
				new_password_hash == user_hash
			end
		end
	end
end
