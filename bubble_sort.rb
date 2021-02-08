def bubble_sort(array)
  i = 0
  while i < array.length - 1
    if array[i].respond_to?(:to_str)
      if array[i].length > array[i + 1].length
        array[i], array[i + 1] = array[i + 1], array[i]
        i = 0
      else
        i += 1
      end
    elsif array[i] > array[i + 1]
      array[i], array[i + 1] = array[i + 1], array[i]
      i = 0
    else
      i += 1
    end
  end
  array
end

print bubble_sort([10, 9, 8, 7, 6, 5, 4, 3, 2, 1])
puts
print bubble_sort(%w[hi hello hey])
puts
print bubble_sort([1.3, 1.5, 1.0, 3.5, 7.0, 3.0])
