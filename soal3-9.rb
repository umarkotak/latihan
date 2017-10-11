def string_from_hash(hsh)
  arr = ""
  hsh.each do |i, j|
    arr += "#{i} = #{j}"
    arr += ","
  end
  arr[-1] = ""
  return arr
end

print string_from_hash({a: 1, b: 2})