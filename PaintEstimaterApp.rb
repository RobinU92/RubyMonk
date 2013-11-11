#
#
# => The Paint estimator app takes in two numbers for length and height of a wall and and estimates the amount of paint needed to paint it

def get_dimensions
  puts "What is the wall length?"
  @length = gets.chomp.to_i
  puts "What is the walls height?"
  @height = gets.chomp.to_i
end

get_dimensions
