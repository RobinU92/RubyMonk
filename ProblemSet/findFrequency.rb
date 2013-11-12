sentence = "Like this and like that and like this and a"

def find_frequency(sent, word)
   arr =[]
   sent.split(" ").each do |item|
     arr << item.downcase
   end
   
   return arr.count(word.downcase)
end

p find_frequency(sentence, "like")
