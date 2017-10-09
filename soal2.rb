def how_many_times(monthly_fee, individual_ticket)

minim_number = monthly_fee / individual_ticket

	if monthly_fee % individual_ticket != 0
		return minim_number + 1
	else
		return minim_number	
	end

end

puts how_many_times(40,15)

puts how_many_times(30,10)

puts how_many_times(80,15)