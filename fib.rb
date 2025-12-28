def fibs(n)
  array = [0, 1]
  for i in 0..n - 3 do
    element = array[i] + array[i + 1]
    array << element
  end
  return array
end

puts fibs(8)