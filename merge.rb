def merge_sort(array)

    if array.size < 2 
       return  array
    else

        left = merge_sort(array[0...(array.size/2)])
        right = merge_sort(array[((array.size)/2)... array.size])
        merge(left, right)
    end
end


def merge(left, right, sub_array = [])
   
    a = 0
    b = 0
    
    left_size = left.size
    right_size = right.size
    count = 0
    while  count <= (left_size + right_size)
        #puts "sub array is  #{sub_array}"
         
    if left[a].nil? 
        sub_array[count] = right[b]
        puts "sub array is  #{sub_array}"
     
     count = ((left_size + right_size) + 1)
    end
    if right[b].nil?
        sub_array[count] = left[a]
        puts "sub array is  #{sub_array}"
        count = ((left_size + right_size) + 1)
    end

    if !(left[a].nil?) && !(right[b].nil?) && left[a] < right[b] 
        sub_array[count] = left[a]
        a += 1
        count += 1
    elsif  !(right[b].nil?) && !(left[a].nil?) && left[a] > right[b]
        sub_array[count] = right[b]
        b += 1
        count += 1 
    end
end
   
   return sub_array
end

new_array = [5,3,4,6,2,1]
print "Original array is #{new_array}\n"

merge_sort(new_array)


    
     