Rajindra Sieunarine
September 11, 2026
Individual Project
CIS 344 
Final Regards
	My individual project, the selected "mini-world" I chose was Baking Supply Shop. 
  Based on a local bakery I worked at during High School, I referenced tools and materials seen throughout my everyday life that way I could use to stock a store who supplies bakers. 
  Also if I’m being honest because as far as creating databases a retail operation doesn't require much robust data to function properly. 
  A baking supply shop must manage a simple inventory (table) of goods—ranging from bulk dry ingredients to specialized decorating tools—while only keeping track of customer information and processing transactions prices, and current stock quantities. 
  In order to have a business we must sell products, said products must be organized into distinct categories to make inventory management logical. 
  A single category can contain many products, but a product belongs to only one category which in my schema makes my second table and possible columns. 
  If we are selling products we must have customers. 
  We need to store details like including their name or id, email address, and phone number, to facilitate communication and track purchase history. 
  Thus establishing my third and leading into my fourth table as the database must record whenever an order is placed, capturing the date, the total amount, and the specific customer who placed it. 
  A customer can place multiple orders and a single product can be sold in many different orders, the system must handle this many-to-many relationship by tracking the exact quantity and unit price of each item at the time of purchase. 
  With all of that being created the Eer Diagram can be easily made by identifying the core entities (Customer, ShopOrder, Product, Category) and mapping their relationships. 
  Key attributes and primary keys were identified to define the scope of the entities. 
  Which finally brings me to the the script that was basically given to me by you through the past classes we had, literally all I had to do recall the items/values I wanna input. 
  Which was refined after consoling Gemini as it reminded to include DROP DATABASE IF EXISTS fail-safes, table creation commands, and Data Manipulation Language (DML) INSERT statements to populate the database with testing data.
