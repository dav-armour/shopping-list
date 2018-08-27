# Grocery store array demo

shopping_list = []

puts 'Enter items to add to list (1 per line)'
3.times do
  shopping_list << gets.chomp
end
puts "Total Items: #{shopping_list.length}"
puts shopping_list.sort
