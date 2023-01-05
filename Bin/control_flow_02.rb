name1 = "Joffrey Baratheon"
name2 = "Arya Stark"
name3 = "Beric Dondarrion"
name4 = "Melisandre"


avg_length = ((name1.length + name2.length + name3.length + name4.length) / 4).to_i

puts "Enter Name"
my_name = gets.chomp

if my_name.length < avg_length 
    puts "#{my_name} is shorter than average"
elsif my_name.length > avg_length
    puts "#{[my_name]} is longer than average"
else 
    puts "#{[my_name]} is equal average"
end
