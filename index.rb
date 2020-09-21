require "./food"
require "./drink"

# Default values of each properties
flavours = ["sweet", "salty", "sour", "bitter", "spicy", "umami"]
originalities = ["italy", "japan", "indonesia", "china"]
vegans = ["vegan", "non-vegan"]
healthies = ["healthy", "junk_food"]
sizes = ["S", "M", "L"]
temperatures = ["hot", "cold"]
caffeines = ["caffeine", "non-caffeine"]
types = ["food", "drink"]

# Available menus
spaghetti = Food.new(name: "Spaghetti", budget: 10000, vegan: vegans[1], flavour: flavours[0, 2], healthy: healthies[0], originality: originalities[0])
nasi_goreng = Food.new(name: "Nasi Goreng", budget: 15000, vegan: vegans[1], flavour: flavours[1, 2], healthy: healthies[0], originality: originalities[2])
meat_bun = Food.new(name: "Meat Bun", budget: 5000, vegan: vegans[1], flavour: flavours[0, 2], healthy: healthies[0], originality: originalities[3])
ocha = Drink.new(name: "Ocha", budget: 10000, size: sizes[1], flavour: flavours[3], temperature: temperatures[1], caffeine: caffeines[1], originality: originalities[1])

# List of menus
menus = [spaghetti, nasi_goreng, meat_bun, ocha]

# Welcome the customers
puts "
Welcome to Yum!"

puts "
------------------------------------------------

"

# Ask if customer wants to drink or eat
puts "Do you want to drink or eat?
Please select an item by its number"
    index = 0
    types.each do |type|
        puts "#{index}. #{types[index]}"
        index += 1
    end

    order = types[gets.chomp.to_i]


# If customers wants to eat
if order == types[0]

    puts "
What flavour do you prefer?
Please select an item by its number"
    index = 0
    flavours.each do |flavour|
        puts "#{index}. #{flavours[index]}"
        index += 1
    end
    choose_flavour = flavours[gets.chomp.to_i]

    puts "
How much budget do you have per person (1000-99000)?"
    choose_budget = gets.chomp.to_i

    puts "
Are you vegan?"
    index = 0
    vegans.each do |vegan|
        puts "#{index}. #{vegans[index]}"
        index += 1
    end
    choose_vegan = vegans[gets.chomp.to_i]

    puts "
Do you prefer healthy food or junk food?
Please select an item by its number"
    index = 0
    healthies.each do |healthy|
        puts "#{index}. #{healthies[index]}"
        index += 1
    end
    choose_healthy = healthies[gets.chomp.to_i]

    puts "
Which cuisine originality do you prefer?
Please select an item by its number"
    index = 0
    originalities.each do |originality|
        puts "#{index}. #{originalities[index]}"
        index += 1
    end
    choose_originality = originalities[gets.chomp.to_i]

    puts "
You have chosen #{choose_flavour} #{choose_budget} #{choose_vegan} #{choose_healthy} #{choose_originality}."


# # If customers wants to drink

else order == types[1]

    puts "
What flavour do you prefer?
Please select an item by its number"
    index = 0
    flavours.each do |flavour|
        puts "#{index}. #{flavours[index]}"
        index += 1
    end
    choose_flavour = flavours[gets.chomp.to_i]

    puts "
How much budget do you have per person (1000-99000)?"
    choose_budget = gets.chomp.to_i

    puts "
Which size do you want S/M/L)?
Please select an item by its number"
    index = 0
    sizes.each do |size|
        puts "#{index}. #{sizes[index]}"
        index += 1
    end
    choose_size = sizes[gets.chomp.to_i]

    puts "
Which temperature do you want?
Please select an item by its number"
    index = 0
    temperatures.each do |temperature|
        puts "#{index}. #{temperatures[index]}"
        index += 1
    end
    choose_temperature = temperatures[gets.chomp.to_i]

    puts "
Do you want caffeine?
Please select an item by its number"
    index = 0
    caffeines.each do |caffeine|
        puts "#{index}. #{caffeines[index]}"
        index += 1
    end
    choose_caffeine = caffeines[gets.chomp.to_i]

    puts "
Which cuisine originality do you prefer?
Please select an item by its number"
    index = 0
    originalities.each do |originality|
        puts "#{index}. #{originalities[index]}"
        index += 1
    end
    choose_originality = originalities[gets.chomp.to_i]

    puts "
You have chosen #{choose_flavour} #{choose_budget} #{choose_size} #{choose_temperature} #{choose_caffeine} #{choose_originality}."

end

# Confirm the order

chosen = menus

if ( choose_flavour == chosen[0].flavour[0] || choose_flavour == chosen[0].flavour[2] ) && choose_budget >= chosen[0].budget && choose_healthy == chosen[0].healthy && choose_originality = chosen[0].originality
    puts "
You have selected: #{chosen[0].name}.

Please wait while we are preparing your #{chosen[0].name}.
Thanks for your order, have a good day!"


elsif ( choose_flavour == chosen[1].flavour[1] || choose_flavour == chosen[1].flavour[2] ) && choose_budget >= chosen[1].budget && choose_healthy == chosen[1].healthy && choose_originality = chosen[1].originality
    puts "
You have selected: #{chosen[1].name}.

Please wait while we are preparing your #{chosen[1].name}.
Thanks for your order, have a good day!
"

elsif ( choose_flavour == chosen[2].flavour[0] || choose_flavour == chosen[2].flavour[2] ) && choose_budget >= chosen[2].budget && choose_healthy == chosen[2].healthy && choose_originality = chosen[2].originality
    puts "
You have selected: #{chosen[2].name}.

Please wait while we are preparing your #{chosen[2].name}.
Thanks for your order, have a good day!
"

elsif  choose_flavour == chosen[3].flavour && choose_budget >= chosen[3].budget && choose_size == chosen[3].size && choose_caffeine == chosen[3].caffeine && choose_originality = chosen[3].originality
    puts "
You have selected: #{chosen[3].name}.

Please wait while we are preparing your #{chosen[3].name}.
Thanks for your order, have a good day!
"

else puts "
    
Sorry, there is no recommendation suits your taste :("
    puts "
------------------------------------------------

"
    puts "However, we have other menus available today!
These are our menus you can choose :)

"

    index = 0
    menus.each do |menu|
        puts "#{index}. #{menu.info}"
        index += 1
    end

    puts "
------------------------------------------------

"
    puts "Please select an item by its number:"
    order = gets.chomp.to_i

    selected_menu = menus[order]
    puts "
You have selected: #{selected_menu.name}.

Please wait while we are preparing your #{selected_menu.name}.
Thanks for your order, have a good day!"

end

puts "
------------------------------------------------

"

