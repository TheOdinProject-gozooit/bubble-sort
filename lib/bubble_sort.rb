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
