# def bacahash(hsh)
# 	str = []
# 	hsh.map { |k, v| str << "#{k} = #{v.to_s}" }	
# 	str
# 	hasil = str.join(",")
# 	puts hasil
# end

def bacahash(*hsh)
	str = []
	hsh.each_with_index.map { |k, i| 
		if k.class == Hash
			k.map { |x, y| str << "#{x} = #{y.to_s}" } 
		else
			if i.even?
				str << "#{hsh[i]} = #{hsh[i+1]}"
			end
		end
	}	
	hasil = str.join(",")
end

bacahash({a: 1, b: '2'})
bacahash({a: 1, b: '2', haha: "wew"})
bacahash("actual", "expected")