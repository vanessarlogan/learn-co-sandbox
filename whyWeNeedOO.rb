#Let's say I have 4 dogs: their information is...
#Henry, 5, Collie, scared
#Eva, 4, Brown Lab, dopey
#Ziggy, 3, Lab Mix, excited
#Casper, 13, Retriver Mix, sleepy

# dogs = {
#   :names => ["Henry", "Eva", "Ziggy", "Casper"],
#   :age => [5, 4, 3, 13],
#   :breed => ["Collie", "Brown lab", "lab mix", "retriver mix"],
#   :personality => ["scared", "dopey", "excited", "sleepy"]
# }

#create a class- class name must be uppercase
class Dogs
  
  #initialize your object- this is REQUIRED
  def initialize(name="unknown", age=0, breed="unknown", personality="none")
    @name = name
    @age = age
    @breed = breed
    @personality = personality
  end 
  
  #reader/return
  def return_name
    @name
  end 
  
  def return_age
    @age
  end
  
  def return_breed
    @breed
  end
  
  def return_personality
    @personality
  end
  
  #setter method/writer
  def reset_age=(new_age)
    @age = new_age
  end
  
  def reset_personality=(new_personality)
    @personality = new_personality
  end 
  
  def bark
    puts "#{@name} says Woof!"
  end
  
  def happy_birthday
    @age = @age += 1
  end 
  
end 

#created an instances of Dog class
henry = Dogs.new("Henry", 5, "Collie", "scared")
eva = Dogs.new("Eva", 8, "Brown Lab", "dopey")
fido = Dogs.new

# eva.reset_personality = "happy"
# puts eva.return_personality

puts fido