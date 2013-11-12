array = ['Ruby', 'Rails', 'C42']

def length_finder(arr)
  out=[]
  arr.each do |ele|
    out << ele.length
  end
  return out
end

p length_finder(array)
