def list(hsh)
  arr = ""
  for i in 0...hsh.size
    arr += "#{hsh[i][:name]}"
    arr += ", " if i < hsh.size - 2
    arr += " & " if i == hsh.size - 2
  end
  arr
end

def list2(names)
  namez = names.map { |nem| nem[:name] }
  last_name = namez.pop
  return last_name.to_s if names.empty?
  "#{namez.join(', ')} & #{last_name}" 
end

puts list2([ {name: 'Bart'}, {name: 'Lisa'}, {name: 'Maggie'} ])
# returns 'Bart, Lisa & Maggie'

puts list([ {name: 'Bart'}, {name: 'Lisa'} ])
# returns 'Bart & Lisa'

puts list([ {name: 'Bart'} ])
# returns 'Bart'

puts list([])