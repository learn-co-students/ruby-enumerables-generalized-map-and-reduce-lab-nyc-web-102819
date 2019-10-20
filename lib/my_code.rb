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
  if array.find {|item| item.is_a? String} 
    return array.map{|e| !!e}
  else
    if starting_point
      new_array = array.reduce(starting_point) {|sum, num| sum + num}
    else
      new_array = array.reduce(0) {|sum, num| sum + num}
    end
  end
  new_array
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