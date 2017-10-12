# def generator(set)
#   arr = []
#   kat = ""
#   str = set.chars
  
#   if set.size != 1

#   end

#   str.each { |i| 
#     arr << i 
#   }

# end

# def get_anagrams(dats)
#   arr = ""
#   dats.map { |k, v| k.times { v.size.times { |i| arr += v[i] } } }
#   # p arr

#   generator(arr)
# end

def get_anagrams(sets)
  arr = ""
  sets.map { |k, v| k.times { v.size.times { |i| arr += v[i] } } }
  x = arr.split("").permutation.to_a
  y = x.map { |i| i.join }
  p y.uniq
end

# def get_anagrams(dats)
#   arr = ""
#   dats.map { |k, v| k.times { v.size.times { |i| arr += v[i] } } }
#   # p arr

  
# end

get_anagrams({1=>["a", "b", "c"]})
# Expected result: ["abc", "acb", "bac", "bca", "cab", "cba"]

get_anagrams({2=>["a"], 1=>["b", "c"]})
# Expected result: 
# ["aabc", "aacb", "abac", "abca", "acab", "acba", "baac", 
#  "baca", "bcaa", "caab", "caba", "cbaa"]