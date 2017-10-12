def add(*angka)
  awal = 0
  angka.each { |i| awal += i}
  awal
end

def substract(*angka)
  awal = angka[0]
  for i in 1...angka.length do
    awal -= angka[i]  
  end
  awal
end

def calculate(*args)
  operator = "add"
  if args.last.class == Hash
    args.last.map { |k, v| operator = k.to_s}
    args.pop
  end

  operator == "substract" ? x = substract(*args) : x = add(*args)

  puts x
end

# add(4, 5)
# add(-10, 2, 3)

# substract(4, 5)

calculate(4, 5)
calculate(4, 5, add: true)
calculate(-10, 2, 3, add: true)
calculate(4, 5, substract: true)