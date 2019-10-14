# i might be overreacting but this ACTUALLY seems mind blowing

def map (array)
  new_array =[]
  array.length.times do
    |entry|
    new_array[entry] = yield(array[entry])
  end
  new_array
end

def reduce (array, value=0)
  array.length.times  do
    |entry|
    value = yield(value, array[entry])
  end 
  value
end