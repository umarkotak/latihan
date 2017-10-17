def how_many_times(monthly_fee, individual_ticket)
  minim_number = monthly_fee / individual_ticket
  return minim_number + 1 if monthly_fee % individual_ticket != 0
end

puts how_many_times(40, 15)
puts how_many_times(30, 10)
puts how_many_times(80, 15)
