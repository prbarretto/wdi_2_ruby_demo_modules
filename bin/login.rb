require_relative '../lib/user'

print "Enter an email address: "
email = gets.chomp

print "Enter a password: "
password = gets.chomp

print "Confirm password: "
password_confirmation = gets.chomp

if GA::User.login(email, password)
	puts "User #{email} has logged in"
else
	puts "User #{email} has failed to log in"
end
