def bubble_sort(array)
  no_swaps_made = false
  last_item_index = array.length - 1

  until no_swaps_made do
    no_swaps_made = true

    array.each_with_index do |item, index|
      if last_item_index == index
        break
      end

      next_item = array[index + 1]
      if item > next_item
        temp = array[index]
        array[index] = next_item
        array[index + 1] = temp
        no_swaps_made = false
      end
    end

    # item at the end is sorted every iteration
    last_item_index -= 1
  end

  array
end

arr_one = [4,3,78,2,0,2]

p bubble_sort(arr_one) 
#=> [0, 2, 2, 3, 4, 78]

arr_two = [5, 45, 8, 90, 4, 24, 22, 7, 3, 3, 45, 6]

p bubble_sort(arr_two)
#=> [3, 3, 4, 5, 6, 7, 8, 22, 24, 45, 45, 90]