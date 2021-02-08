def bubblesort(array)
  i = 0
  while i < array.length - 1
    result = yield(array[i], array[i + 1])
    if result.positive?
      array[i], array[i + 1] = array[i + 1], array[i]
      i = 0
    else
      i += 1
    end
  end
  array
end
print bubblesort([14, 8, 3, 100, 3, 9, 2, 1, 0, 12, 20]) { |left, right| left - right }
puts
print bubblesort(%w[hi hello hey]) { |left, right| left.length - right.length }
