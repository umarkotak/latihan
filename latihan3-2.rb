# movie_ratings = {}

# movie_ratings = { "pengabdi setan" => 5,
# 				  "the raid 2" => 5,
				  # "ziarah" => 4 }


# movie_ratings = Hash.new(3)
# new_movie = movie_ratings["pengabdi setan"]
# puts new_movie

# movie_ratings = Hash["PS", 5, "TR 2", 5, "ziarah", 4]
# puts movie_ratings

# a = ["PS", 5]
# b = ["TR 2", 5]
# c = ["Z", 4]

# movie_ratings = [a, b, c]
# puts movie_ratings
# puts Hash[movie_ratings]

# a_hash = Hash.new([])

# a_hash["A"] << 5
# a_hash["B"] << 4

# puts a_hash["A"].to_s
# puts a_hash["B"].to_s
# puts a_hash["C"].to_s

# puts a_hash.to_s
# a_hash["A"] == a_hash["B"]

# puts a_hash["A"].object_id
# puts a_hash["A"].object_id

# hash dengan conten sama tp urutan beda true
# 5 4 = 4 5
# array dengan conten sama urutan beda false
# 5 4 != 4 5

# mvrate = { "PS" => 4 }
# mvrate["A"] = 5
# puts mvrate

# hash = {"key" => value}

# mvrate = { "PS" => 5, "TR 2" => 5, "Z" => 4 }

# mvrate.each { |title, rating| puts "MOVIE #{title} IS RATED #{rating}" }

# mvrate.each_key do |title|
# 	puts title
# end

# mvrate.each_value do |val|
# 	puts val
# end

# hsh.map {|k,v| exspression}

mentor1 = { :name => "gio" , :age => 30}
mentor2 = { name: "reymond", age: 25 }
puts mentor1
puts mentor2