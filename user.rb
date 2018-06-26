class Snapchat
  attr_accessor :email, :phone_number, :username, :password, :birthday
  def initialize(email,phone_number,username,passowrd,birthday)
    @email = email
    @phone_number = phone_number
    @username = username
    @password = password
    @birthday = birthday
  end
end
puts "Please enter your email."
email = gets.chomp


puts "Please enter a username."
username_reject = gets.chomp 
puts "The username #{username_reject} is already taken. Please select another username."
username = gets.chomp
if username_reject == username 
  puts "Please choose a DIFFERENT username."
  username_1 = gets.chomp
  puts "#{username_1} is a great username!!"
else username_reject != username
  puts "#{username} is a great username!!"
end

puts "Please enter a password."
password = gets.chomp.length

def valid_password
  if password <= 7 #before you had password.lenth <= 7 but when line 28 got changed from password = gets.chomp to password = gets.chomp.length you deleted the length part. same goes for line 34
    puts "Password does not match requirements."
    puts "Password must be at least eight characters long. Please enter a valid password"
  else password >= 8
    puts "Please confirm password."
    def password_confirmation #instead of using the method to replace the endless conditionals try using an until loop and do until password == password
    #also ask about requireing a number or capital letter (does it possible require line 28 but password = gets.chomp.to_i)
      if password == password
        puts "Don't forget your password!"
      else password != password
        puts "Those passwords do not match. Please try again."
        if password == password #this will go on infinitely so make a loop (see above note) 
          puts "Don't forget your password!"
        else password != password
          puts "Those passwords do not match. Please try again."
          gets.chomp = password
          puts "Don't forget your password!"
        end #make sure you have enough ends
  end
end
end