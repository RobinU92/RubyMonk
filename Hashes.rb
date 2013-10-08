#Creating a Hash
  # a collection of key-value pairs
  
    student_ages = {
      'Jack' => 10,
      'Jill' => 12,
      'Bob' => 14
    }
    
  #Fetch values from a Hash
  
    student_ages['Jack']      #returns 10 the value of the key Jack
  
  #Modifying a Hash
    restaurant_menu = {}
    # set the values for each item separately here:
    restaurant_menu['Dal Makhani']=4.5
    restaurant_menu['Tea']=2
    
#Hashes in and out
#Iterating over a Hash
  restaurant_menu = { "Ramen" => 3, "Dal Makhani" => 4, "Coffee" => 2 }
  restaurant_menu.each do | item, price |
    puts "#{item}: $#{price}"
  end
  
  restaurant_menu = { "Ramen" => 3, "Dal Makhani" => 4, "Coffee" => 2 }
  restaurant_menu.each do |item, price|
    restaurant_menu[item] = price + (price * 0.1)
  end
  
  #Extracting the keys and values from a Hash
  
  restaurant_menu = { "Ramen" => 3, "Dal Makhani" => 4, "Coffee" => 2 }
  # your code here   
  restaurant_menu.keys
  
#Newer, faster ------------Review this section
  
  def artax
    a = [:punch, 0]
    b = [:kick, 72]
    c = [:stops_bullets_with_hands, false]
    key_value_pairs = # you can do this. you are a champion.
                      # unlike Artax, who gave up in a swamp.
    [a,b,c]
    Hash[key_value_pairs]
  end
  p artax
    
  
    
    
