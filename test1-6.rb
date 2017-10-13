def get_order_cost(menu, ordered_items)
	cost = 0

	ordered_items.map { |k, v|  
		harga = menu[k]
		cost += harga * v
	}

	puts cost
end

# This menu shows the name of the itmes and their respective price
menu = { rice: 2, chicken: 4, meat: 5 }

ordered_items = { rice: 1, chicken: 1 }
get_order_cost(menu, ordered_items)
# return 6

ordered_items = { rice: 1, meat: 1 }
get_order_cost(menu, ordered_items)
# return 7

ordered_items = { rice: 1, chicken: 2, meat: 2 }
get_order_cost(menu, ordered_items)
# return 20

ordered_items = { rice: 2, chicken: 3, meat: 2 }
get_order_cost(menu, ordered_items)