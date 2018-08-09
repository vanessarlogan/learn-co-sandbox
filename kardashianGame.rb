class Kardashians
  
  attr_accessor :name, :num_babies, :birth_year
  
  def initialize(name, num_babies, birth_year)
    @name = name
    @num_babies = num_babies
    @birth_year = birth_year
  end #initliaze end
  
  #create and initalize your objects here
  
end #class end

class Quiz
  
  @@kardashian_questions = []
  
  #this is where we add each object to the array
  def self.add_kardashian(add_kardashian)
    @@kardashian_questions << add_kardashian
  end 
  
  #questions for baby names
  def self.quiz_question_babies(kardashian)
    
    puts "What is the number of children that #{kardashian.name} has?"
    
    answer = gets.chomp.to_i
    
    if answer == kardashian.num_babies
      
      puts "Correct!"
      
    else 
      puts "That is wrong. #{kardashian.name} actually has #{kardashian.num_babies}."
    end 
      
  
  end 
  
  #questions for birth years
  def self.quiz_question_birth_years(birth_year)
    
    puts "What is the birthday year of #{kardashian.name}?"
    
    answer = gets.chomp.to_i
    
    if answer == kardashian.birth_year
      
      puts "Correct!"
      
    else 
      puts "That is wrong. #{kardashian.name} is born in #{kardashian.birth_year}."
    end 
    
  end 
  
  #start the quiz
  def self.start_quiz
     @@kardashian_questions.each do |questions|
      self.quiz_question_babies(questions)
    end
    puts "Quiz is over!"
  end 
  
end 

#my data
Quiz.add_kardashian(Kardashians.new("Kourtney", 3, 1979))
Quiz.add_kardashian(Kardashians.new("Kim", 3, 1980))
Quiz.add_kardashian(Kardashians.new("Khloe", 1, 1984))
Quiz.add_kardashian(rob = Kardashians.new("Rob", 1, 1987))
Quiz.add_kardashian(kendall = Kardashians.new("Kendall", 0, 1995))
Quiz.add_kardashian(kylie = Kardashians.new("Kylie", 1, 1997))

Quiz.start_quiz

#create a quiz that either quizzes the number of children and/or birth year (choose one first and then add the other one
#if you really don't want to do the Kardashians you can also do other celebrities
#once your quiz is running it should keep track of the score, asks the user if they want to end, option which quiz