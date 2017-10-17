class FindPalindromes
  def find(m, n)
    counter = 1
    arr = []
    while counter <= n
      pal = m.to_s
      if pal == pal.reverse
        # print pal+" "
        arr << pal.to_i
        counter += 1
      end   
      m += 1
    end
    arr
  end
end