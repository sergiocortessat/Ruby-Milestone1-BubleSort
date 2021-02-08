def bubble_sort(array)
  i = 0
  while i < array.length - 1
    if array[i].respond_to?(:to_str)
      if array[i].length > array[i + 1].length
        array[i], array[i + 1] = array[i + 1], array[i]
        i = 0
      end
    elsif array[i] > array[i + 1]
      array[i], array[i + 1] = array[i + 1], array[i]
      i = 0
    end
    i += 1
  end
  array
end

print bubble_sort([14, 8, 3, 100, 3, 9, 2, 1, 0, 12, 20])
puts
print bubble_sort(%w[hi hello hey])
puts
print bubble_sort([1.3, 1.5, 1.0, 3.5, 7.0, 3.0])
