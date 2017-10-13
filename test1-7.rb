def get_total_cost(menu, *ordered_items)
	cost = 0

	ordered_items.each do |x|
	x.map { |k, v|  
		harga = menu[k]
		cost += harga * v
	}
	end

	puts cost
end

# This menu shows the name of the itmes and their respective price
menu = { rice: 2, chicken: 4, meat: 5 }

get_total_cost(menu, { rice: 1, chicken: 2, meat: 2 })
# return 20

get_total_cost(menu, { rice: 1, chicken: 1 }, { rice: 1, meat: 1 })
# return 13