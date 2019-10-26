# Your Code Here
def map(array)
   array.map{|n| yield n}
 end

  
def reduce(array, starting_point = 0)
  if starting_point != 0 
    array.reduce(starting_point){|x,y| yield x,y} 
  else 
    array.reduce{|x,y| yield x,y}
  end
end