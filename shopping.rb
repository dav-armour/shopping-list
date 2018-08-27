# Grocery store array demo

shopping_list = []

puts 'Enter items to add to list (1 per line)'
3.times do
  new_item = gets.chomp
  if new_item == 'ice cream'
    new_item = 'broccoli'
  end
  shopping_list << new_item
end
puts "Total Items: #{shopping_list.length}"
puts shopping_list.sort!
