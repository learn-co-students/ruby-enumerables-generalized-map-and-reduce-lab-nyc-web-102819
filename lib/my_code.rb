# i might be overreacting but this ACTUALLY seems mind blowing

def map (array)
  new_array =[]
  array.length.times do
    |entry|
    new_array[entry] = yield(array[entry])
  end
  new_array
end

def reduce (array, start=nil)   #copied this from the youtube video because my way was passing all tests except the 10th one (returns true then a truthy value is present). Was returning 0 instead of True every single time. No clue how it passed evey other test with the same code, super frustrating.
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
