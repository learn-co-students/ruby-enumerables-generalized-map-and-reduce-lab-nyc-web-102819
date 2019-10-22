# Your Code Here
def map(array)
  i = 0
  while i < array.length
    array[i] = yield(array[i])
    i += 1
  end
  array
end

def reduce(array, starting_point = nil)
  if starting_point 
    sum = starting_point
    i = 0
  else
    sum = array[0]
    i = 1
  end
  
  while i < array.length
    sum = yield(sum, array[i])
    i += 1
  end
  sum
end





# def reduce(array, starting_point = nil)
#   i = 0
#   total = 0
#   new_array = []
#   if starting_point
#     while i < array.length
#       starting_point = yield(starting_point, array[i])
#       i += 1
#     end
#     return starting_point
#   else
#     while i < array.length
#       if array[i] == true
#         return yield(array[i])
#       elsif array[i] != true 
#         return yield(array[i])
#       end
#       total = yield(total, array[i])
#       i += 1
#     end
#   end
#   total
# end

# def reduce(array)
#   i = 0
#   new_array = []
#   while i < array.length
#     if array[i]
#       new_array << array[i]
#     else
#     end
#     i += 1
#   end
#   if new_array.length == 0
#     return FALSE
#   else
#     return TRUE
# end
# end