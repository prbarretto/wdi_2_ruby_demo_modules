require_relative '../lib/user'

print "Enter an email address: "
email = gets.chomp

print "Enter a password: "
password = gets.chomp

print "Confirm password: "
password_confirmation = gets.chomp

user = User.new(email, password, password_confirmation)
puts "Created User #{user.inspect}"
user.encrypt_password
user.save!
