def map (source_array)
  new_array = []
  counter = 0
  while counter < source_array.length do
    new_array.push(yield(source_array[counter]))
    counter += 1
  end
  return new_array
end

def reduce (source_array, starting_point = 0)
  return yield(starting_point, source_array)

  

  
