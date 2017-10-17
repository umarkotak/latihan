def angkadasar(num)
  words = ""
  case num
  when 1
    words += "satu"
  when 2
    words += "dua"
  when 3
    words += "tiga"
  when 4
    words += "empat"
  when 5
    words += "lima"
  when 6
    words += "enam"
  when 7
    words += "tujuh"
  when 8
    words += "delapan"
  when 9
    words += "sembilan"
  when 10
    words += "sepuluh"
  when 11
    words += "sebelas"
  when 12
    words += "dua belas"
  when 13
    words += "tiga belas"
  when 14
    words += "empat belas"
  when 15
    words += "lima belas"
  when 16
    words += "enam belas"
  when 17
    words += "tujuh belas"
  when 18
    words += "delapan belas"
  when 19
    words += "sembilan belas"
  end
  words
end

def angkapuluh(angka)
  words = ""
  if angka % 10 == 0
    words += "#{angkadasar(angka/10)} puluh"
   else
    words += "#{angkadasar(angka / 10)} puluh #{angkadasar(angka % 10)}"
   end
   words
end

def angkaratus(angka)
  words = ""
  if angka == 100
    words += "seratus"
  elsif angka % 100 == 0
    words += "#{angkadasar(angka/100)} ratus"
  elsif angka < 200
    words += "seratus "
    if angka % 100 < 20
      words += "#{angkadasar(angka%100)}"
    else
      words += "#{angkapuluh(angka%100)}"
    end
  else
    if angka % 100 < 20
      words += "#{angkadasar(angka/100)} ratus #{angkadasar(angka%100)}"
    else
      words += "#{angkadasar(angka/100)} ratus #{angkapuluh(angka%100)}"
    end
  end
  words
end

def angkaribu(angka)
  words = ""
  if angka == 1000
    words += "seribu"
  else
    if angka / 1000 < 20
      words += "#{angkadasar(angka/1000)} ribu"
    elsif angka / 1000 < 100
      words += "#{angkapuluh(angka/1000)} ribu"
    else
      words += "#{angkaratus(angka/1000)} ribu"
    end
  end
  if angka % 1000 != 0
    if angka % 1000 < 20
      words += " #{angkadasar(angka%1000)}"
    elsif angka % 1000 < 100
      words += " #{angkapuluh(angka%1000)}"
    else
      words += " #{angkaratus(angka%1000)}"
    end
  end

  words
end

def num_to_words(num)
  angka = num.to_i
  words = ""

  if angka == 0
    words += "nol"
  elsif angka < 20 
    words += angkadasar(angka)
  elsif angka < 100
    words += angkapuluh(angka)
  elsif angka < 1000
    words += angkaratus(angka)  
  else
    words += angkaribu(angka)
  end
  if angka == 1000000
    wordsr += "satu juta"
  end
  
  puts words
end 

def num_to_words2(number)
  number = number.to_i
  word = ""
  basic_words = { 0 => "nol",
                  1 => "satu", 
                  2 => "dua",
                  3 => "tiga",
                  4 => "empat",
                  5 => "lima",
                  6 => "enam",
                  7 => "tujuh",
                  8 => "delapan",
                  9 => "sembilan",
                  10 => "sepuluh",
                  11 => "sebelas",
                  100 => "seratus",
                  1000 => "seribu",
                  10000 => "sepuluh ribu"
                }

  if basic_words.has_key?(number)
    word += basic_words[number]
  else
    unit = 10 ** (number.to_s.length - 1)
    head = number / unit

    if number < 20
      word += basic_words[number % unit] + " belas"
      number = unit
    elsif number < 100
      word += basic_words[head] + " puluh "
    elsif number < 200
      word += "seratus "
    elsif number < 1000
      word += basic_words[head] + " ratus "
    elsif number < 10000
      word += basic_words[head] + " ribu "
    elsif number < 100000
      word += num_to_words2(number / 1000) + " ribu "
      unit = unit / 10
    elsif number < 1000000
      word += num_to_words2(number / 1000) + " ribu "
      unit = unit / 100
    elsif number < 10000000
      word += num_to_words2(number / 1000000) + " juta "
    elsif number < 100000000
      word += num_to_words2(number / 1000000) + " juta "
      unit = unit / 10

    end

    tail = number % unit

    if tail != 0
      word += num_to_words2(tail)
    end
  end

  # puts word
  word
end

masukan = gets.chomp
puts num_to_words2(masukan)
# num_to_words(0)      # return "nol"
# num_to_words(1)      # return "satu"
# num_to_words(10)     # return "sepuluh"
# num_to_words(11)     # return "sebelas"
# num_to_words(45)     # return "empat puluh lima"
# num_to_words(123)    # return "seratus dua puluh tiga"
# num_to_words(123400) # return "seratus dua puluh tiga ribu empat ratus"