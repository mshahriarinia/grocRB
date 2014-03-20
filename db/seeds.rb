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
	{:name => 'Trident Layers Wild Strawberry + Tangy Citrus Sugar Free Gum, 14 pc', :brand => 'Trident', :description => ' Trident Layers Wild Strawberry + Tangy Citrus Sugar Free Gum:      50% fewer calories than sugared gum     Calorie content has been reduced from 8 to 4 calories     With real fruit flavor'}
  	 ]

product_types.each do |p|
  ProductType.create!(p)
end

#==========================================================================

users = [#{:name => '', :password => '', :email => '', :description => ''},
	{:name => 'John Brown', :password => 'testdfkdn', :email => 'john@yahoo.com' ,:description => 'Hi, my name is john'},
	{:name => 'Melissa Wright', :password => 'Parskdjsker', :email => 'm.parker@gmail.com', :description => 'I love shopping.'},
	{:name => 'Janet Williams', :password => 'Stewalskdmsrt', :email => 'js322@gmail.com', :description => 'Mother of two, organic enthusiast.'},
	{:name => 'Alex Blake', :password => 'alelsdmsxy', :email => 'alex.blake@gmail.com', :description => 'Community advocate.'},
	{:name => 'Holly Franklyn', :password => 'teslksdmst', :email => 'holly23287@yahoo.com' ,:description => 'Hey'},
	{:name => 'Marissa Secades', :password => 'goldenglobe', :email => 'marisa.se@gmail.com', :description => ''},
	{:name => 'Emilly Stewart', :password => 'd3k34fkl34', :email => 'bigemily@gmail.com', :description => 'bestty'},
	{:name => 'Ashley autumn', :password => 'iuhksjdnsnd', :email => 'ashley@ufl.edu', :description => 'Sorority'},
	{:name => 'Giovani Lugo', :password => ',m32edjn!#&^', :email => 'Gio@msn.com' ,:description => 'hola!'},
	{:name => 'Justin Smiths', :password => 'kjwendkwd', :email => 's.justin@gmail.com', :description => 'photographer'},
	{:name => 'Chrissy Sadge', :password => 'iu3hi3nc23', :email => 'smart_sadge@yahoo.com', :description => 'hmmmmmm.'},
	{:name => 'Steve Johnson', :password => 'jwiwjnciwjn', :email => 'stevej232@aol.com', :description => 'Stevyyyyy'},
	{:name => 'Berry Brighton', :password => 'dvwesdwecw', :email => 'berry.br@gmail.com', :description => 'let\'s shop around :)'}
]

users.each do |p|
  User.create!(p)
end

#==========================================================================

stores = [#{:name => '', :address => '', :description => ''},
	{:name => 'Walmart', :address => '1800 Ne 12Th Ave Gainesville, FL 32641', :description => 'Store Phone 	 	(352) 372-3191 Store Hours • 	Open 24 Hours At This Location •	Pharmacy •	Vision Center •	Grocery •	Garden Center •	Cell Phones, Plans & More •	Photo Center •	1-Hour Photo Center •	Same Day Pickup Photo Center •	Same Day Pickup Photo Center •	Site to StoreSM •	Pay In Person •	L.e.i. Apparel •	Op Apparel Photo Center Phone 	 	(352) 372-0997     Vision Center Phone 	 	(352) 372-3104   Pharmacy Phone 	 	(352) 372-6205 Pharmacy Hours • 	 Monday - Friday : 9: 00 am - 9: 00 pm • 	 Saturday: 9: 00 am - 7: 00 pm • 	 Sunday: 10: 00 am - 6: 00 pm Site to StoreSM Hours 	 • 	 Monday - Friday : 10: 00 am - 10: 00 pm • 	 Saturday: 10: 00 am - 10: 00 pm • 	 Sunday: 10: 00 am - 10: 00 pm'},
	{:name => 'Publix', :address => '125 SW 34th St Gainesville, FL 32607-2850', :description => ' Store Hours: Sun 7:00 AM - 11:00 PM Mon 7:00 AM - 11:00 PM Tues 7:00 AM - 11:00 PM Wed 7:00 AM - 11:00 PM Thurs 7:00 AM - 11:00 PM Fri 7:00 AM - 11:00 PM Sat 7:00 AM - 11:00 PM 	See what\'s on sale this week! Weekly Ad Weekly Ad   Store Departments & Services  Store Departments: Publix Bakery Publix Deli Produce Seafood Meat Floral 	  Store Services: Money Order Sales Money Transfers Check Cashing Coin Counting Recycling Presto! ATM  Also Available: Wine & Beer Sushi'},
	{:name => 'Publix', :address => '3100 SW 35th Blvd Gainesville, FL 32608-2415', :description => ' Store Hours: Sun 7:00 AM - 11:00 PM Mon 7:00 AM - 11:00 PM Tues 7:00 AM - 11:00 PM Wed 7:00 AM - 11:00 PM Thurs 7:00 AM - 11:00 PM Fri 7:00 AM - 11:00 PM Sat 7:00 AM - 11:00 PM 	See what\'s on sale this week! Weekly Ad Weekly Ad   Store Departments & Services  Store Departments: Publix Bakery Publix Deli Produce Seafood Meat Floral 	  Also Available: Wine & Beer Sushi 	  Store Services: Money Order Sales Money Transfers Check Cashing Coin Counting Recycling Presto! ATM '},
	{:name => 'Ward\'s Super Market', :address => '515 NW 23rd Ave, Gainesville, FL 32609', :description => 'Ward’s Supermarket is the only locally-owned and operated grocery in Gainesville. Our family has been committed to providing the best selection, quality and prices for more than 50 years. We offer a bountiful array of fresh local produce, seafood, meat, baked goods, beer and wine and much more! We are dedicated to freshness, and you can see the difference throughout our store. Enjoy our truly original offerings, such as family-secret home-made jellies, sauces, dressings and salsa. Choose a loaf of fresh, locally made bread to go along with our wide selection of reasonably-priced wine and imported cheeses. Select some fresh meat or seafood to grill for dinner, and enjoy the variety of fresh, local vegetables available to go with it!'},
	{:name => 'Earth Origins Market', :address => '521 NW 13th St Gainesville, FL 32601', :description => 'All Earth Origins Markets were originally locally owned, independent, natural and organic food stores.  All were started with the desire and passion to provide natural and organic foods to communities in Florida, Maryland, and Cape Cod.  Each location came to stand for personalized customer service, products that reflected community needs, and the ability to quickly satisfy special orders and requests.  In December, 2010, Earth Origins Markets became the new name for the twelve locations.  Each store still retains the unique, independent character that made it a fun place to shop, the same helpful and knowledgeable associates, and a blend of departments and products that cater to that natural and organic neighborhood location.  All stores offer gluten free and vegan food options, a selection of locally produced products, as well as extensive personal care and supplement departments staffed by knowledgeable associates.  So, while our name may have changed, Earth Origins commitment to its customers and vendors did not. Despite incredible competition within the markets we serve, Earth Origins has distinguished itself through great products, incredible customer service and leadership. The result has been a chain of stores which have not only maintained their market position, but are performing better than ever.'},
	{:name => 'Winn-Dixie', :address => '300 SW 16th Ave Gainesville, FL 32601', :description => 'Winn-Dixie #150 	8.01 miles 	 LIQUOR STORE 300 SW 16th Ave - Suite A GAINESVILLE, FL 32601 	      VIEW WEEKLY AD     GET DIRECTIONS      Main Phone: 352-379-0023 	  Store Hours 	    MON - FRI: 09:00 A.M. - 10:00 P.M. 	    SAT: 09:00 A.M. - 11:00 P.M. 	    SUN: 09:00 A.M. - 10:00 P.M. 	      '},
	{:name => 'Sweetbay SuperMarket', :address => '2002 SW 34th St Gainesville, FL 32608', :description => 'The Sweetbay Magnolia (Magnolia virginiana) is the literal inspiration for our name. With its fragrant white blossoms and brilliant red berries, the beautiful Sweetbay vividly reflects our passion for delicious food. Common to West Central Florida, the Sweetbay grows tall and strong, echoing the strength of our stores and associates.  Sweetbay Supermarket, a Delhaize America company, provides a one-of-a-kind shopping experience, built from the ground up and developed from research in core markets to express the vibrant, exciting and diverse tastes, colors and aromas of food important to Floridians. Sweetbay offers outstanding value, quality and variety, routinely partnering with Florida growers, to bring shoppers the freshest food available in the state. Sweetbay Supermarket was launched in November 2004 in Largo and is headquartered in Tampa. Sweetbay has 72 stores in Florida.'},
	{:name => 'Chun Ching Oriental Food Supply', :address => '418 NW 8th Ave Gainesville, FL 32601', :description => ' Hours Mon 	9:30 am - 7:30 pm 	 Tue 	9:30 am - 7:30 pm 	Open now Wed 	9:30 am - 7:30 pm 	 Thu 	9:30 am - 7:30 pm 	 Fri 	9:30 am - 7:30 pm 	 Sat 	9:30 am - 7:30 pm 	 Sun 	12:00 pm - 6:00 pm 	 Edit business info More business info      Accepts Credit Cards         Yes       Parking         Private Lot       Wheelchair Accessible         Yes '}
]

stores.each do |p|
  Store.create!(p)
end

#==========================================================================

bargains = [#{:price => '', :store_id => '', :user_id => '', :product_type => ''},
	{:price => '23', :store_id => 1, :user_id => 1, :product_type_id => 1, :description => 'Good deal'},
	{:price => '3.99', :store_id => 3, :user_id => 4, :product_type_id => 2, :description => 'Awesome'},
	{:price => '4.49', :store_id => 4, :user_id => 3, :product_type_id => 2, :description => 'steal!'},
	{:price => '12.50', :store_id => 6, :user_id => 1, :product_type_id => 3, :description => 'YESS!'},
	{:price => '7.00', :store_id => 3, :user_id => 2, :product_type_id => 4, :description => ''},
	{:price => '1.29', :store_id => 5, :user_id => 5, :product_type_id => 5, :description => 'Good price'},
	{:price => '0.99', :store_id => 7, :user_id => 6, :product_type_id => 6, :description => 'nice'},
	{:price => '3.45', :store_id => 8, :user_id => 4, :product_type_id => 7, :description => ''},
	{:price => '5.50', :store_id => 2, :user_id => 7, :product_type_id => 1, :description => ''},
	{:price => '7.99', :store_id => 3, :user_id => 2, :product_type_id => 5, :description => ''},
	{:price => '3.29', :store_id => 4, :user_id => 1, :product_type_id => 2, :description => ''},
	{:price => '1.25', :store_id => 1, :user_id => 5, :product_type_id => 8, :description => ''},
	{:price => '2.99', :store_id => 5, :user_id => 3, :product_type_id => 3, :description => ''},
	{:price => '4.49', :store_id => 4, :user_id => 8, :product_type_id => 4, :description => ''},
	{:price => '7.25', :store_id => 3, :user_id => 9, :product_type_id => 7, :description => ''},
	{:price => '1.29', :store_id => 5, :user_id => 5, :product_type_id => 5, :description => 'Good one'},
	{:price => '0.99', :store_id => 7, :user_id => 6, :product_type_id => 6, :description => ''},
	{:price => '3.45', :store_id => 8, :user_id => 4, :product_type_id => 7, :description => ''},
	{:price => '5.50', :store_id => 2, :user_id => 7, :product_type_id => 1, :description => ''},
	{:price => '7.99', :store_id => 3, :user_id => 2, :product_type_id => 5, :description => ''},
	{:price => '3.29', :store_id => 4, :user_id => 1, :product_type_id => 2, :description => ''},
	{:price => '1.25', :store_id => 1, :user_id => 5, :product_type_id => 8, :description => 'ohooo'},
	{:price => '2.99', :store_id => 5, :user_id => 3, :product_type_id => 3, :description => ''},
	{:price => '4.49', :store_id => 4, :user_id => 8, :product_type_id => 4, :description => ''},
	{:price => '7.25', :store_id => 3, :user_id => 9, :product_type_id => 7, :description => ''},
	{:price => '1.29', :store_id => 5, :user_id => 5, :product_type_id => 5, :description => 'hey'},
	{:price => '0.99', :store_id => 7, :user_id => 6, :product_type_id => 6, :description => ''},
	{:price => '3.45', :store_id => 8, :user_id => 4, :product_type_id => 7, :description => ''},
	{:price => '5.50', :store_id => 2, :user_id => 7, :product_type_id => 1, :description => ''},
	{:price => '7.99', :store_id => 3, :user_id => 2, :product_type_id => 5, :description => ''},
	{:price => '3.29', :store_id => 4, :user_id => 1, :product_type_id => 2, :description => ''},
	{:price => '1.25', :store_id => 1, :user_id => 5, :product_type_id => 8, :description => ''},
	{:price => '2.99', :store_id => 5, :user_id => 3, :product_type_id => 3, :description => ''},
	{:price => '4.49', :store_id => 4, :user_id => 8, :product_type_id => 4, :description => ''},
	{:price => '7.25', :store_id => 3, :user_id => 9, :product_type_id => 7, :description => ''},
	{:price => '1.29', :store_id => 5, :user_id => 5, :product_type_id => 5, :description => 'Good price'},
	{:price => '0.99', :store_id => 7, :user_id => 6, :product_type_id => 6, :description => 'nice'},
	{:price => '3.45', :store_id => 8, :user_id => 4, :product_type_id => 7, :description => ''},
	{:price => '5.50', :store_id => 2, :user_id => 7, :product_type_id => 1, :description => ''},
	{:price => '7.99', :store_id => 3, :user_id => 2, :product_type_id => 5, :description => ''},
	{:price => '3.29', :store_id => 4, :user_id => 1, :product_type_id => 2, :description => ''},
	{:price => '1.25', :store_id => 1, :user_id => 5, :product_type_id => 8, :description => ''},
	{:price => '2.99', :store_id => 5, :user_id => 3, :product_type_id => 3, :description => ''},
	{:price => '4.49', :store_id => 4, :user_id => 8, :product_type_id => 4, :description => ''},
	{:price => '7.25', :store_id => 3, :user_id => 9, :product_type_id => 7, :description => ''},
	{:price => '4.49', :store_id => 4, :user_id => 8, :product_type_id => 4, :description => ''},
	{:price => '7.25', :store_id => 3, :user_id => 9, :product_type_id => 7, :description => ''},
	{:price => '1.29', :store_id => 5, :user_id => 5, :product_type_id => 5, :description => 'hey'},
	{:price => '0.99', :store_id => 7, :user_id => 6, :product_type_id => 6, :description => ''},
	{:price => '3.45', :store_id => 8, :user_id => 4, :product_type_id => 7, :description => ''},
	{:price => '5.50', :store_id => 2, :user_id => 7, :product_type_id => 1, :description => ''},
	{:price => '7.99', :store_id => 3, :user_id => 2, :product_type_id => 5, :description => ''},
	{:price => '3.29', :store_id => 4, :user_id => 1, :product_type_id => 2, :description => ''},
	{:price => '1.25', :store_id => 1, :user_id => 5, :product_type_id => 8, :description => ''},
	{:price => '2.99', :store_id => 5, :user_id => 3, :product_type_id => 3, :description => ''},
]

bargains.each do |p|
  Bargain.create!(p)
end
