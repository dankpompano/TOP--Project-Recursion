def merge_sort(array)
  if(array.length == 1)
    return array
  else
    p array.length
    midpoint = (array.length / 2.0).ceil
    array1 = array[0, midpoint]
    array2 = array[midpoint, array.length]
  
    array1 = merge_sort(array1)
    array2 = merge_sort(array2)
    
    
    return merge(array1, array2)
  end
end

def merge(a, b)
  c = []
  while(!a.empty? && !b.empty?)
    if(a[0] > b[0])
      c << b[0]
      b.delete_at(0)
    else
      c << a[0]
      a.delete_at(0)
    end
  end

  while(!a.empty?)
    c << a[0]
    a.delete_at(0)
  end

  while(!b.empty?)
    c << b[0]
    b.delete_at(0)
  end
  return c 
end

array = [8, 15, 23, 34, 41, 55, 67, 72, 78, 89, 4, 12, 29, 38, 46, 51, 64, 77, 85, 96]
p merge_sort(array)