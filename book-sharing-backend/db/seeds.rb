# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


user1 = User.create(username: 'Amy', email: 'amyhfong@gmail.com', password: '1')
user2 = User.create(username: 'BB', email: 'miyukipg@gmail.com', password: '2')

book1 = Book.create(title: 'Frog and Toad', 
					author: 'Arnold Lobel', 
					cover_image: 'https://images-na.ssl-images-amazon.com/images/I/81WFbb3AyDL.jpg',
					reading_age: 'Kids',
					user_id: 1)

book2 = Book.create(title: 'Ming Lo Moves the Mountain',
					author: 'Arnold Lobel',
					cover_image: 'https://images-na.ssl-images-amazon.com/images/I/51haiOXClkL.jpg',
					reading_age: 'Kids',
					user_id: 1)

book3 = Book.create(title: 'I Want My Hat Back',
					author: 'Jon Klassen',
					cover_image: 'https://m.media-amazon.com/images/P/0763655988.01._SCLZZZZZZZ_SX500_.jpg',
					reading_age: 'Toddlers',
					user_id: 2)

book4 = Book.create(title: 'This Is Not My Hat',
					author: 'Jon Klassen',
					cover_image: 'https://images-na.ssl-images-amazon.com/images/I/81t7W-bij3L.jpg',
					reading_age: 'Toddlers',
					user_id: 2)

book5 = Book.create(title: 'Little Kids First Big Book of Dinosaurs',
					author: 'National Geographic Catherine Hughes',
					cover_image: 'https://images-na.ssl-images-amazon.com/images/I/817nvjKbDPL.jpg',
					reading_age: 'Kids',
					user_id: 2)

book6 = Book.create(title: 'Dairy of a Wimpy Kid',
					author: 'Jeff Kinney',
					cover_image: 'https://contentcafe2.btol.com/ContentCafe/Jacket.aspx?UserID=BPL&Password=BT0059&Return=1&Type=M&Value=9780810983915',
					reading_age: 'Kids',
					user_id: 2)

book7 = Book.create(title: 'Calvin and Hobbes',
					author: 'Bill Watterson',
					cover_image: 'https://contentcafe2.btol.com/ContentCafe/Jacket.aspx?UserID=BPL&Password=BT0059&Return=1&Type=M&Value=0836218221',
					reading_age: 'Teens',
					user_id: 2)

book8 = Book.create(title: 'All the light we cannot see',
					author: 'Anthony Doerr',
					cover_image: 'https://contentcafe2.btol.com/ContentCafe/Jacket.aspx?UserID=BPL&Password=BT0059&Return=1&Type=M&Value=1476746583',
					reading_age: 'Adults',
					user_id: 2)

request1 = Request.create(user_id: 1, book_id: 3)