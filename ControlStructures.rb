#BOOLEAN EXPRESSIONS IN RUBY

  #Beginners guide to Expressions in Ruby
  
  name == "Bob"     #checks if the variable name is equal to the string Bob
  age <= 35         #checks if the variable age is less than or equal to 35
  
  #Combining Expressions using && and || operators
  
  age >= 23 && name == 'Bob'                          #and Both conditions need to be true
  age < 14 || name == "Craig"                         #or Only one condition needs to be true
  age >= 23 && (name == 'Bob' || name == 'Jill')       
  
  #Negating expressions
  !(name == "Bob")                                    #any value for name will evaluate to true but Bob.
  
#The if..else construct
  #Ruby Conditional Branching : the 'if' statement
  def check_sign(number)
    if number > 0
      "#{number} is positive"
    else
      "#{number} is negative"
    end        
  end
  
  check_sign(0)       #returns 0 is negative
  check_sign(1)       # returns 1 is positve
  check_sign(-1)      # -1 is negative
  
  def check_signNEW(number)
    if number > 0
      "#{number} is positive"
    elsif number == 0
      "0"
    else
      "#{number} is negative"
    end        
  end


  #the ternary operator
  def check_sign(number)
    number > 0 ? "#{number} is positive" : "#{number} is negative"          # conditional ? true : false
  end
  
  #Truthiness of objects in Ruby
  #objects false and nil equates to false. Every other object like say 1, 0, "" are all evaluated to be true.
  if 0
    puts "Hey, 0 is considered to be a truth in Ruby"
  end

#Loops in Ruby
  loop do
    monk.meditate
    break if monk.nirvana?
  end

  def ring(bell, n)
    n.times do
      bell.ring
    end
  end  
  
# Reviewed 10/9/2003
# Reviewed 11/4/2013
  




