# Your Code Here
def map(array)
  array.length.times { |index|
    array[index] = yield(array[index])
  }
  array
end

def reduce(array, start=0)
  array.length.times { |index|
    start = yield(array[index], start)
    if !!start == false
      return false
    end
  }
  start
end