def non_duplicate_values(arr)
  hsh = Hash.new(0)
  newarr = []
  arr.map { |i| hsh[i] += 1 }
  hsh.map { |k, v| newarr << k if v == 1 } 
  print newarr
end

non_duplicate_values([1, 2, 2, 3, 3, 4, 5]) # return [1, 4, 5]
non_duplicate_values([1, 2, 2, 3, 4, 4])    # return [1, 3]