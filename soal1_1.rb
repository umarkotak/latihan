def fav_programming_language
  puts 'What is your favorite programming language?'
  language = gets.chomp
  case language
  when 'ruby'
    puts 'Yukihiro Matsumoto'
  when 'pearl'
    puts 'M Umar Ramadhana'
  else
    puts 'Maaf saya tidak mengetahui bahasa pemrograman itu'
  end
end

fav_programming_language
