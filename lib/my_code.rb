def map(array)
  new = []
  i = 0 
  while i < array.length do
    new.push(yield(array[i]))
    i += 1
  end
  new
end

def reduce(array, starting_point=nil)
  if starting_point
    return_value = starting_point
    i = 0 
  else
    return_value = array[0]
    i = 1
  end

  while i < array.length do
    return_value = yield(return_value, array[i])
    i += 1
  end
  return_value
end
