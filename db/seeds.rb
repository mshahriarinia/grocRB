# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

product_types = [#{:name => '', :brand => '', :description => ''},
	{:name => 'Chobani Simply 100™ Black Cherry', :brand => 'Chobani', :description => 'About Chobani® Greek yogurt      More protein per serving than regular yogurt     Only natural ingredients     No artificial flavors or sweeteners     No preservatives     Made with milk from cows not treated with artificial growth hormones**     Includes live & active cultures     Three types of probiotics     Gluten free     Kosher certified     Vegetarian friendly     Less than 5% lactose'},
	{:name => 'Wonderful Pistachios, Dry Roasted & Salted, 5 oz, 8/Box', :brand => 'Wonderful', :description => ' ** Lightly salted and roasted pistachios. These low-calorie, low-fat and high-fiber nuts make for a heart-healthy natural snack. Convenient single-serve packs. Food Type: Nuts; Flavor: Dry Roasted & Salted; Capacity (Weight): 5 oz; Packing Type: Pack. ** '},
	{:name => ' Powerade Ion4 Sports Drink, Mountain Berry Blast , 20 Fl. Oz, (Pack of 6)', :brand => 'Powerade', :description => '      20 fl. oz.     Sports drink & vitamins B3, B6 & B12. Mixed berry flavor + other natural flavors. Advanced electrolyte system.     Sodium. Potassium. Calcium. Magnesium. The Ion4 Advanced Electrolyte System helps replenish 4 electrolytes lost in sweat.     . And Powerade is formulated with a 6% carbohydrate solution and vitamin B3, B6 & B12 to help provide energy to working muscles.     Refrigerate after opening.'},
	{:name => 'Glaceau Vitamin Water Zero, Squeezed, 20-Ounce Bottles (Pack of 24)', :brand => 'Glaceau', :description => ' The pioneers of the enhanced-water beverage category have welcomed a new member to the family. vitaminwater zero-a naturally sweetened, great-tasting beverage option that (in case you don\'t get the hint) has zero calories per 8 fl oz serving! Not to mention, every bottle is an excellent source of Vitamin C and four essential B vitamins. '},
	{:name => 'Nature\'s Pride 12 Grain Bakery Bread, 24 oz', :brand => 'Nature\'s', :description => '      14g whole grains per slice     Excellent source of fiber     100% natural     No high fructose corn syrup, trans fats or artificial colors, flavors or preservatives'},
	{:name => 'Trop50 No Pulp Orange Juice, 59 fl oz', :brand => 'Trop50', :description => '  Trop50 No Pulp Orange Juice is made with the same pure, natural Tropicana orange juice you love, with 50% less sugar and calories. Made with real, fresh oranges and no artificial sweeteners, each eight fluid ounce glass has 100% of your day\'s vitamin c, and is a good source of potassium. Trop50 No Pulp is never made from concentrate. Trop50 No Pulp Orange Juice:      100% vitamin c     50 calories per 8 fluid ounce serving     50% less sugar and calories     Made with real juice     100% pure, no artificial sweeteners     Kosher'},
	{:name => 'Thomas\' Double Fiber Multi-Grain Bagels, 6ct', :brand => 'Thomas\'s', :description => '  Every serving of Thomas\' Double Fiber Multi-Grain Bagels has 17 grams of whole grains, zero grams of trans fat, no cholesterol, and is low in fat and a good source of fiber and thiamin. Thomas\' Double Fiber Multi-Grain Bagels are a better way to start the day. Thomas\' Double Fiber Multi-Grain Bagels:      17g whole grains     8g fiber     Pre-sliced     Kosher'},
	{:name => 'Keurig K-Cups, Green Mountain Breakfast Blend Coffee, 18 ct', :brand => 'Keuri', :description => ' Keurig\'s exclusive K-Cup System has teamed up with gourmet Green Mountain Coffee to bring you Keurig Green Mountain Coffee Blend K-Cups, 18 Ct. Green Mountain Coffee Breakfast Blend is a classic, vibrant Arabica bean-based New England breakfast cup. Enjoy this Green Montain Coffee Light blend brewed to perfection in your Keurig K-Cup Coffee system — an aromatic way to kick start your morning! Breakfast Blend Coffee delivers an engaging Central American-style roast melded with the sweet body and depth of an Indonesian bean to create a wakeful blend that will instantly set the tone for your day. Brew up a single serving with these ultra-convenient 18 Ct. Keurig Coffee K-Cups perfect for home or office. The Keurig Green Mountain Coffee Blend, K-Cups, 18 Ct. is made to fit Keurig Elite 40, B60 Special Edition, B70 Platinum and Keurig MINI Plus Personal Brewing Systems only.  Keurig K-Cups, Green Mountain Breakfast Blend Coffee, 18 ct:      Depending on machine, will brew either a 6, 8 or 10 oz beverage     K-Cup Portion Pack for use in Keurig Brewing System.     Hot beverages at the touch of a button     Easy clean up'},
	{:name => 'Budweiser Select 55 Premium Light Beer, 12 fl oz, 12 pack', :brand => 'Budweiser', :description => 'Budweiser Select 55 Premium Light Beer is the lightest beer in the world with fewer calories than any other beer option currently available. Budweiser Select 55 is brewed with specialty malts and a blend of imported and domestic hopping. It has a light-golden color and offers aroma notes of toasted malt and subtle hopping. Per 12-ounce serving, Budweiser Select 55 has 55 calories and 1.9 grams carbohydrates. Budweiser Select 55 Premium Light Beer:      Refreshing lighter light lager     Only 55 calories'},
	{:name => 'Trident Layers Wild Strawberry + Tangy Citrus Sugar Free Gum, 14 pc', :brand => 'Trident', :description => ' Trident Layers Wild Strawberry + Tangy Citrus Sugar Free Gum:      50% fewer calories than sugared gum     Calorie content has been reduced from 8 to 4 calories     With real fruit flavor'},
  	 ]

product_types.each do |p|
  ProductType.create!(p)
end

#------------------------------------------------------------

users = [#{:name => '', :password => '', :email => '', :description => ''},
	{:name => 'John Brown', :password => 'test', :email => 'john@yahoo.com' ,:description => 'Hi, my name is john'},
	{:name => 'Melissa', :password => 'Parker', :email => 'm.parker@gmail.com', :description => 'I love shopping.'},
	{:name => 'Janet', :password => 'Stewart', :email => 'js322@gmail.com', :description => 'Mother of two, organic enthusiast.'},
]

users.each do |p|
  User.create!(p)
end




