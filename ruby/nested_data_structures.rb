playerData = [
  {
    username: "John",
    email: "john@somewebsite.com",
    password: "ls93mjd0",
    backpack: {
      inventory: [
        "iron_sword",
        "wooden_shield",
        "steel_chestplate",
        "gold_helmet"
      ],
      money: 200,
      upgraded: false
    }
  },
  {
    username: "Gary",
    email: "gary@someotherwebsite.com",
    password: "nb82jK",
    backpack: {
      inventory: [
        "iron_chestplate",
        "steel_sword",
        "wooden_shield",
        "leather_boots"
      ],
      money: 325,
      upgraded: true
    }
  },
  {
    username: "Victor",
    email: "victor@yetanotherwebsite",
    password: "KAoau133j",
    backpack: {
      inventory: [
        "wooden_stick",
        "hefty_rock"
      ],
      money: 10,
      upgraded: false
    }
  }
]

puts "Player inventories:\n"
playerData.each do |player|
  print "#{player[:username]} has #{player[:backpack][:money]} gold"
  player[:backpack][:inventory].each { |item| print ", #{item}"}
  puts "\n"
end
