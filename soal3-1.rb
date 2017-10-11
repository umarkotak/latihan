def insert_dash(number)
  numbers = number.to_s
  angka = []

  for i in 0..numbers.size-1 do
    if numbers[i].to_i.odd? && numbers[i+1].to_i.odd?
      angka << numbers[i] + "-"
    else
      angka << numbers[i]
    end
  end
  a = angka.join()
  print a
end

# def insert_dash2(number)
#   numbers = number.to_s.chars
#   panjang = numbers.length

#   i = 0
#   while i < numbers.length
#     if numbers[i].to_i.odd? && numbers[i+1].to_i.odd?
#       numbers[i] += "-"
#     end
#     i += 1  
#   end

#   print numbers
# end

# def insert_dash3(number)
#   num = number.to_s.chars
#   num.each_with_index { |x, i| num[i] += "-" if num[i].to_i.odd? && num[i+1].to_i.odd? }
#   num.join
# end

# insert_dash(454793)
# puts
# insert_dash(13)
# puts
# insert_dash(13579)

# insert_dash2(135)