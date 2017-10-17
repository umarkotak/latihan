a1 = ["arp", "lives", "strong"]
a4 = ["live", "strong", "arp"]
a2 = ["lively", "alive", "harp", "sharp", "armstrong"]
a3 = ["tarp", "mice", "frong"]

def in_array(a1, a2)
  check = Array.new(a1.size) { 0 }
  arr = []
  for i in 0...a1.size
    a2.each { |x| check[i] = 1 if x.include?(a1[i]) }
    arr << a1[i] if check[i] == 1
  end

  print arr.sort
end

def in_array2(a1, a2)
  a1.select { |s|  }
end

# any? -> minimal 1 bener
# all? -> harus bener semua

in_array(a1, a2)