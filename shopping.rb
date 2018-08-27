# Grocery store array demo

shopping_list = {}

puts "Welcome to the shopping list app"
while true
  puts "How many items do you wish to add?"
  number_of_items = gets.chomp.to_i
  number_of_items.times do
    puts 'Enter item'
    new_item = gets.chomp
    if new_item == 'ice cream'
      new_item = 'broccoli'
    end
    puts "How many #{new_item}?"
    qty = gets.chomp.to_i
    # FIXME: Check if valid integer
    qty = 0 if qty < 0
    shopping_list[new_item] = qty
  end
  system('clear')
  puts "Sorted Shopping List:"
  total_item_qty = 0
  for item, qty in shopping_list.sort
    puts "Item: #{item}".ljust(20) + "Qty: #{qty.to_s.rjust(3)}"
    total_item_qty += qty
  end
  puts "Total Items: #{total_item_qty}"
  puts "Add more items? (Y/N)"
  answer = gets.chomp.downcase
  break unless answer == 'y'
end
