def fibs(n)
  array = [0, 1]
  for i in 0..n - 3 do
    element = array[i] + array[i + 1]
    array << element
  end
  return array
end

# puts fibs(1)

def fibs_rec(n) 
  return [] if n == 0
  return [0] if n == 1
  return [0, 1] if n == 2

  prev = fibs_rec(n - 1)
  prev << prev[-1] + prev[-2]
end

# puts fibs_rec(8)