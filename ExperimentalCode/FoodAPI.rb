require 'fatsecret'

FatSecret.init('e70941d624cf445c836c98932317dd7a','e12513b7c7764e12958ee9d33fda6173')

milk = FatSecret.search_food('milk')

calories_per_100g = milk["foods"]["food"][0]['food_description']


def calsPer100(food)
  searched = FatSecret.search_food(food)
  cP100    = searched["foods"]["food"][0]['food_description']
  array_cP100  = cP100.split(' ')
  array_cP100
end

def calories(arr)
  arr[4]
end

puts  calories(calsPer100('turkey')).split('k')[0]

