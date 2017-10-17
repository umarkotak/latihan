class DescendingOrder
  def descending(number)
    angka = number.to_s
    arr = []
    arr = angka.split("").map { |x| x.to_i  }
    arr.sort! { |x,y| y <=> x }
    out = arr.join("")
    out.to_i
  end
end