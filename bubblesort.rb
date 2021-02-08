def bubblesort
    array = yield
    i = 0
    while i < array.length - 1
        if array[i].respond_to?(:to_str)
            if array[i].length > array[i+1].length
                array[i],array[i+1] = array[i+1],array[i]
                array = bubblesort { array }
            end
        elsif array[i] > array[i+1]
            array[i],array[i+1] = array[i+1],array[i]
            array = bubblesort { array }
        end
        i = i + 1
    end
    return array
end

print bubblesort {[14,8,3,100,3,9,2,1,0,12,20]}
puts
print bubblesort {["hi","hello","hey"]}
puts
print bubblesort {[1.3,1.5,1.0,3.5,7.0,3.0]}
