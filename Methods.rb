#6.1 Being Methodical
#What are methods really?
    puts 1.next           #2 

#Objectifying methods
    puts 1.method("next")       #<Method: Fixnum(Integer)#next>
    
    next_method_object = 1.method("next")
    puts next_method_object.call  #2

#Make it so 
    def reverse_sign(an_integer)
      return 0 - an_integer
    end
    
    puts reverse_sign(100)        #-100
    puts reverse_sign(-5)         #5
    
    def do_nothing
    end
    
    puts do_nothing.class         #NilClass
    
    def demonstrate_early_return
      return puts "You will never see this, because we never get here."
    end
    
    puts demonstrate_early_return.class     #NilClass
    
    def add_two(x)
      x.next.next                 
    end
    
#6.2 Calling a Method
# Cooperative objects
  def add(a_number, another_number)
    a_number + another_number
  end
  
  puts add(1,2)
  
  #setting a default parameter
  
  def add(a_number, another_number, yet_another_number=1)
    a_number + another_number + yet_another_number
  end
  
  puts add(1,2)
  
  def add(*numbers)
    numbers.inject(0) { |sum, number| sum + number }
  end
  
  puts add(1)
  puts add(1, 2)
  puts add(1, 2, 3)
  puts add(1, 2, 3, 4)
  
  def introduction(age, gender, *names)
    "Meet #{names.join(' ')}, who's #{age} and #{gender}"
  end
  
  #------------Study----------------------####
  def add(*numbers)
    numbers.inject(0) { |sum, number| sum + number }  
  end
  
  def subtract(*numbers)
    sum = numbers.shift
    numbers.inject(sum) { |sum, number| sum - number }  
  end
  
  def calculate(*arguments)
    # if the last argument is a Hash, extract it 
    # otherwise create an empty Hash
    options = arguments[-1].is_a?(Hash) ? arguments.pop : {}
    options[:add] = true if options.empty?
    return add(*arguments) if options[:add]
    return subtract(*arguments) if options[:subtract]
  end
    
