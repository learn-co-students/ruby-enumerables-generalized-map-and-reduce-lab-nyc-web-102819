# i might be overreacting but this ACTUALLY seems mind blowing

def map (array)
  new_array =[]
  array.length.times do
    |entry|
    new_array[entry] = yield(array[entry])
  end
  new_array
end

def reduce (array, start=nil)
  count = 0
  if !start
    start = array[0]
    count = 1
  end
  while count < array.length  do
    start = yield(start, array[count])
    count +=1
  end 
  start
end