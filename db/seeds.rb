# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


puts "Seeding Database tables"

    puts "Seeding user data...."
        User.create!([
            { id: 1, username: 'johndoe', email: 'johndoe@example.com', password_digest: 'johndoe', contact: '123-456-7890', created_at: '2023-03-01'},
            { id: 2, username: 'janedoe', email: 'janedoe@example.com', password_digest: 'janedoe', contact: '987-654-3210', created_at: '2023-03-02'},
            { id: 3, username: 'bobsmith', email: 'bobsmith@example.com', password_digest: 'bobsmith', contact: '555-555-5555', created_at: '2023-03-03'},
            { id: 4, username: 'alisongreen', email: 'alisongreen@example.com', password_digest: 'alisongreen', contact: '111-222-3333', created_at: '2023-03-04'},
            { id: 5, username: 'tomjones', email: 'tomjones@example.com', password_digest: 'tomjones', contact: '444-444-4444', created_at: '2023-03-05'}
        ])
        

    puts "Seeding Shoppinglist data...."
        ShoppingList.create!([
            { id: 1, name: 'Grocery List', description: 'A list of items to buy at the grocery store.', user_id: 1, created_at: '2023-03-01', updated_at: '2023-03-02'},
            { id: 2, name: 'Home Improvement List', description: 'A list of items needed for a home improvement project.', user_id: 2, created_at: '2023-03-02', updated_at: '2023-03-03'},
            { id: 3, name: 'Travel Packing List', description: 'A list of items to pack for an upcoming trip.', user_id: 3, created_at: '2023-03-03', updated_at: '2023-03-04'},
            { id: 4, name: 'Holiday Gift List', description: 'A list of gifts to buy for friends and family during the holiday season.', user_id: 4, created_at: '2023-03-04', updated_at: '2023-03-05'},
            { id: 5, name: 'Back-to-School List', description: 'A list of school supplies to buy for the upcoming school year.', user_id: 5, created_at: '2023-03-05', updated_at: '2023-03-06'}
        ])
      

    puts "Seeding Items data...."
        Item.create!([
            { id: 1,shopping_list_id: 1, name: 'Red T-Shirt', description: 'A comfortable red t-shirt made of soft cotton.', quantity: 10, category: 'Clothing', price: 15.99, created_at: "03/01/2023", updated_at: "03/02/2023",},
            { id: 2,shopping_list_id: 2, name: 'Blue Jeans', description: 'Classic blue denim jeans that fit well and feel great.', quantity: 5, category: 'Clothing', price: 29.99, created_at: "01/01/2023", updated_at: "03/03/2023"},
            { id: 3,shopping_list_id: 3, name: 'Black Leather Shoes', description: 'Elegant black leather shoes that are perfect for a night out.', quantity: 3, category: 'Footwear', price: 59.99, created_at: "03/02/2023", updated_at: "03/03/2023"},
            { id: 4,shopping_list_id: 4, name: 'Silver Watch', description: 'A stylish silver watch that looks great with any outfit.', quantity: 8, category: 'Accessories', price: 79.99, created_at: "03/02/2023", updated_at: "04/03/2023"},
            { id: 5,shopping_list_id: 5, name: 'Wireless Headphones', description: 'High-quality wireless headphones with noise-cancelling technology.', quantity: 2, category: 'Electronics', price: 149.99, created_at: "03/01/2023", updated_at: "10/02/2023"}
        ])
    
puts "Ending Seeding Database tables"

    