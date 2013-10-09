# 5.0 CLasses
  #Grouping Objects
  
    puts 3.class        #Fixnumb
    puts "".class       #String
    puts [].class       #Array
    
    1.is_a?(Integer)    #true
    4.is_a?(String)     #false
    
  #Classes are people too
  
    1.class.class       #class
  
  #What do classes do?
    Object.new

#5.1 Building your own class
  #Getting classy
  
    class Rectangle
  #state and behaviour
      def initialize(length, breadth)
        @length   = length
        @breadth  = breadth
      end
      def perimeter
        2 * (@length + @breadth)
      end
      
      def area
        @length * @breadth
      end
    end
  
  



