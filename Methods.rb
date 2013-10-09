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
      return
      puts "You will never see this, because we never get here."
    end
    
    puts demonstrate_early_return.class     #NilClass
    
    def add_two(x)
      x.next.next                 
    end
    
