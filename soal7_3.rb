require 'date'

def bulanan
  str = ''
  i = 1..12
  i.each do
    str += "#{Date::MONTHNAMES[i]} "
  end
  str
end

puts bulanan
