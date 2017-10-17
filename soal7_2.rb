require 'date'

def tanggal(date)
  str = date.to_s.split('-')
  "#{str[2]}/#{str[1]}/#{str[0]}"
end

puts tanggal(Date.today)
