# Public: Takes an array as input and provides a new array as output, where the array is sorted in order of magnitude. The function follows the Selection Sort algorithm.
#
# array - the array that will be sorted
# 
# Examples
#
#   selection_sort([7, 3, 1, 3]) 
#   #=> [1, 3, 3, 7]
#   selection_sort([0, -1, 2, -1, 9, -1]) 
#   #=> [-1, -1, -1, 0, 2, 9]
#
#
#
# Returns an array in order.
def selection_sort(array)
    i = 0
    lowest = array[1]
    sorted = []
    size = array.length
    while sorted.length < size
        while i < size
           if array[i] < array[lowest]
            lowest = i
           end
           i += 1
        end
        sorted << array.delete_at(lowest) 
        lowest = 0
        i = 0
    end
    return sorted
end

p selection_sort([0, -1, 2, -1, 9, -1]) 