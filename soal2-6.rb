# You can use this skeleton
def capitals(sentence)
  cap = 0
  sentence.chars.each do |char|
    # you can use ".match(/\p{Upper}/)"
    cap += 1 if char.match(/\p{Upper}/)
  end

  puts cap
end

capitals("Jakarta")
# will return 1

capitals("Go-Jek Scholars with Kolla Edu")
# will return 5

capitals("hello")
# will return 0