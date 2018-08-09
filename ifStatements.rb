#conditionals aka if statements
# We are not doing methods... please make sure you are thinking about this!

#This is where I set x equals to something
#This is where I test
# x = -1

if x < 10
  puts "x is less than ten."
  elsif x == 10
    puts "x is equal to ten."
  elsif x > 10 && x < 20
    puts "x is between ten and twenty"
  else
    puts "x is greater than 20"
end

t = 23

if t > 7 && t < 11
    puts "Good morning"
  elsif t > 11 && t < 17
    puts "Good afternoon"
  elsif t > 17 && t < 22
    puts "Good evening"
  else 
    puts "Goodnight!"
end 

#If the time is between 7am and 12pm say good morning
#If the time is between 12pm and 5pm say good afternoon
#If the time is between 5pm and 9pm good evening
#If nothing else is there put goodnight