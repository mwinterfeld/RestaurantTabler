# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Restaurant.create(:name => "Yellowbelly Chicken", :category => "American", :description => "")
Restaurant.create(:name => "Moe's Original BBQ", :category => "American", :description => "")
Restaurant.create(:name => "Best Store Ever", :category => "American", :description => "")
Restaurant.create(:name => "The Attic Bar & Bistro", :category => "American", :description => "")
Restaurant.create(:name => "Smooch Frozen Yogurt & Mochi", :category => "American", :description => "")


Restaurant.create(:name => "Curry N Kebob", :category => "Indian", :description => "We have good kebob")
Restaurant.create(:name => "Mt. Everest Cuisine", :category => "Nepali", :description => "We have great food.")
Restaurant.create(:name => "Gurkhas on the Hill", :category => "Nepali", :description => "")
Restaurant.create(:name => "Royal Clay Oven", :category => "Nepali", :description => "")
Restaurant.create(:name => "Tiffin's Indian Cafe", :category => "Indian", :description => "")
Restaurant.create(:name => "Taj Indian Cuisine", :category => "Indian", :description => "We have good kebob")


Restaurant.create(:name => "Gondolier Italian Eatery", :category => "Italian")
Restaurant.create(:name => "Nick-N-Willy's Pizza", :category => "Italian")
Restaurant.create(:name => "Fresh Thymes Eatery", :category => "Italian")
Restaurant.create(:name => "Beau Jo's Colorado Style Pizza", :category => "Italian")
Restaurant.create(:name => "California Pizza Kitchen - Boulder", :category => "Italian")
Restaurant.create(:name => "Dagabi Cucina Spanish Restaurant", :category => "Mexican")
