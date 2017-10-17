require 'date'

def kabisat
  str = ''
  tahun = 2000...2100
  tahun.each do |x|
    str += "#{x} " if Date.gregorian_leap?(x)
  end
  str
end

puts kabisat
