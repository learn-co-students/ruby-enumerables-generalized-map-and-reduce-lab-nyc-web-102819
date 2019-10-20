def map(array)
  new = []
  array.length.times do |index|
    new << yield(array[index])
  end
  new
end

def reduce(array, starting_point=nil)
  if starting_point
    total = starting_point
    index = 0
  else
    total = array[0]
    index = 1
  end
  while index < array.length
    total = yield(total, array[index])
    index += 1
  end
  total
end