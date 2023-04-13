# Return a sorted array using bubble sort methodology
def bubble_sort(arr)
  arr.length.times do |index|
    next if index.zero? || arr[index - 1] < arr[index]

    tmp = arr[index]
    arr[index] = arr[index - 1]
    arr[index - 1] = tmp
  end
  arr
end


