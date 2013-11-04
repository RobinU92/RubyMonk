#Introduction to Arrays
# Empty arrays

    empty_arr = []
    empty_arr1 = Array.new
    
    #Building arrays
    first_five = [1,2,3,4,5]
    
    #Looking up data in Arrays
    
    first_five[2]                                                 #returns the value at the index 2 which is 3
    first_five[-1]                                                #returns the value at the index -1 ( negative numbers start from the end)
    
    #Growing arrays
    
    first_five<<'woot'
    first_five.push('pig')                                        #these two methods << .push do the same thing.  Add a string 'woot'/'pig to the end of an array
    
#Basic Array Operations
  #Transforming arrays
  
  [1,2,3,4,5].map{|i| i + 1}                                       #adds one to each value in the array
  
  #Filtering elements of an Array
  
  [1,2,3,4,5,6].select {|number| number % 2 == 0}                 #selects all the values that meet the condition
  names = ['rock', 'paper', 'scissors', 'lizard', 'spock']    
  names.select{|name| name.length > 5}                            #selects all the strings that have more than five characters
  
  #Deleteting elements
  puts [1,3,5,4,6,7].delete(5)                                       #deletes the number 5 from the array
  [1,2,3,4,5,6,7].delete_if{|i| i < 4}                               #delets all values that meet condition i < 4
  [1,2,3,4,5,6,7,8,9].delete_if{|i| i % 2 == 0}                      #deletes all the even numbers
 
#Iteration
#Got for loops?
    array = [1,2,3,4,5]
    for i in array
      puts i
    end
    
    def array_copy(source)
      destination = []
      for number in source
        # Add number to destination if number
        # is less than 4
        destination << number if number < 4
      end
      return destination
    end
    
#Looping with 'each'
  array = [1,2,3,4,5]
  array.each do |i|
    puts i
  end


# Reviewed 10/9/2013
# Reviewed 11/4/2013



  
  
  







