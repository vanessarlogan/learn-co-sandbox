# Color Array Program
#Writen by Vanessa Wentzloff
#Last update July 27 2018

#method creates a loop to iterate through array and print out the color

def printColors(array) #must pass in an array
  
  #this .each loop is going through each color in the passed in array
  
  array.each do |color|
    puts "Your color is #{color}." #prints to terminal
  end #.each loop end
  
end # printColors end

colorArray = ["blue", "green", "orange"]