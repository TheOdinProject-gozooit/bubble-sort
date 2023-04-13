# Return a sorted array using bubble sort methodology
def bubble_sort(arr)
  until sorted?(arr)
    arr.length.times do |index|
      next if index.zero? || arr[index - 1] < arr[index]

      tmp = arr[index]
      arr[index] = arr[index - 1]
      arr[index - 1] = tmp
    end
  end
  arr
end

# Return true if the array is sorted, otherwise return false
def sorted?(arr)
  arr.each_with_index do |value, index|
    next if index.zero?

    return false if value < arr[index - 1]
  end
  true
end

# Add TOP example so can be run with "ruby ./bubble_sort.rb"
arr = [4, 3, 78, 2, 0, 2]
puts "Sorting array #{arr} with bubble sort :"
puts bubble_sort(arr) # return [0,2,2,3,4,78]
