def bubble_sort(array)
    sorted = true
    len = array.length
    while true
        array.each_with_index do |element, index|
            if index < len - 1
                if array[index] > array[index + 1]
                    temp = array[index + 1]
                    array[index + 1] = array[index]
                    array[index] = temp
                    sorted = false
                end
            end
        end
        if sorted
            return array
        else
            sorted = true
        end
    end
end


# puts bubble_sort([4,3,78,2,0,2])
puts bubble_sort([4,-89,-82,2,0,2])