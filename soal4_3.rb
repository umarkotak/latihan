def word_count(teks)
	teks.downcase!
	hsh = Hash.new(0)
	teks.gsub!(/\W+/, ' ')
	
	arr = teks.split(" ")
	arr.map { |word| 
		hsh[word.to_sym] += 1 if arr.include?(word)
	}

	p hsh
	p hsh.max_by {|k, v| v}
	p hsh.min_by {|k, v| v}
end

def count(array)
  hsh = Hash.new(0)
  x = array.map { |i| hsh[i] += 1 }
  hsh
end

word_count("New: Returns a new, empty hash. If this hash is subsequently accessed by a key that does not correspond to a hash entry, the value returned depends on the style of new used to create the hash. In the first form, the access returns nil. If object is specified, this single object will be used for all default values. If a block is specified, it will be called with the hash object and the key, and should return the default value. The block has the responsibility to store the value in the hash if required.")

# Return:
# {:new=>3, :returns=>2, :a=>4, :empty=>1, :hash=>6, :if=>4, :this=>2, :is=>3, :subsequently=>1, :accessed=>1, :by=>1, :key=>2, :that=>1, :does=>1, :not=>1, :correspond=>1, :to=>3, :entry=>1, :the=>12, :value=>3, :returned=>1, :depends=>1, :on=>1, :style=>1, :of=>1, :used=>2, :create=>1, :in=>2, :first=>1, :form=>1, :access=>1, :nil=>1, :object=>3, :specified=>2, :single=>1, :will=>2, :be=>2, :for=>1, :all=>1, :default=>2, :values=>1, :block=>2, :it=>1, :called=>1, :with=>1, :and=>2, :should=>1, :return=>1, :has=>1, :responsibility=>1, :store=>1, :required=>1}

# Clue:
# You can use this pattern to match non alphabet characters: /[^a-z ]/i

