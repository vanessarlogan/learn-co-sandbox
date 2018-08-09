class Element 
  
  attr_accessor :name, :atomic_number, :mass
  
  def initialize(name, atomic_number, mass)
    #@ symbol global variable
    @name = name
    @atomic_number= atomic_number
    @mass = mass
  end
  
end

#new class
class Quizzer

  # @@ means its a CLASS variable! type of local variable. Quizzer owns it!
  # remember: unlike instances there, is only one of any given Class, so only one Quizzer.periodic_table
  
  @@periodic_table = []
  @@total_questions = 0
  
  # self. before a method means its a CLASS method! Our Quizzer has no `initialize` method, and does not make instances.
 
  # the Quizzer object is a natural place for us to keep track of all the elements we want to be practicing on.
  
  def self.add_element(element)
    @@periodic_table << element
    @@total_questions += 1
  end
 
  # this will take in a single element instance and quiz the user.
  def self.quiz_element(element)
    
    puts "What is the atomic number of #{element.name}?"
    
    answer = gets.chomp.to_i
    
    if answer == element.mass
      
      @@correct_answers += 1
      puts "Great job! Correct! Your current score is #{@@correct_answers} out of #{@@total_questions}."
      
    else
      puts "Oops! #{element.name} has an atomic number of #{element.mass}. You provided: #{answer}. Your current score is #{@@correct_answers} out of #{@@total_questions}."
    end
    
  end
 
  # this will start our quizzing routine! The main goal of our program!
  def self.start_quiz
    @@correct_answers = 0
    @@periodic_table.each do |element|
      self.quiz_element(element)
    end 
    puts "Quiz is over! Your score is #{@@correct_answers} out of #{@@total_questions}"
    
  end
  
end 


Quizzer.add_element(Element.new("Hydrogen", 1, 8))
Quizzer.add_element(Element.new("Helium", 2, 7))
Quizzer.add_element(Element.new("Lithium", 3, 6))

#how i start the quiz
Quizzer.start_quiz