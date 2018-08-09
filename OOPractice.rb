#Object Orientiation Practice

class TravelPlans
  
  #initialize the 
  def initialize(city, country, food)
    @city = city          #instances of the class
    @country = country
    @food = food
  end
  
  #Getter Methods- returns what you're looking for
  def getCity
    @city
  end
  
  def getCountry
    @country
  end 
  
  def getFood
    @food
  end
  
  #this is still an accessor method
  def getCityCountry
    puts "You will be traveling to #{@city}, #{@country}"
  end
  
  def plane
    puts "Plane is taking off!"
  end
  
  #setter behavior- change things
  def set_food=(new_food)
    @food = new_food
  end
end 

#multiple instances of the same class
berlin = TravelPlans.new("Berlin", "Germany", "Sauerkraut")
paris = TravelPlans.new("Paris", "France", "Baguette")


paris.set_food = "smellycheese"
puts paris.getFood