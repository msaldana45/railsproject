# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

#populate the orders table in the database 


 Order.create(customer_id:1, saledate:"2015-04-01", salenotes: "Order Number 12378236")
 Order.create(customer_id:2, saledate:"2016-01-010", salenotes:"Order Number 1581112")
 Order.create(customer_id:3, saledate:"2016-02-11",salenotes: "Order Number 1569911")
 Order.create(customer_id:4, saledate:"2016-02-12",salenotes:"Order Number 12345678")
 Order.create(customer_id:5, saledate:"2016-02-01",salenotes:"Order Number 58911123")
 
 #Promotion Directory
 
Promotion.create(title: "Promotion 1", description: "Promotion 1 Desc", imagepath: "promotion1.png", startdate: "2015-04-01", enddate: "2015-04-30")
Promotion.create(title: "Promotion 2", description: "Promotion 2 Desc", imagepath: "promotion2.png", startdate: "2015-05-01", enddate: "2015-05-31")
Promotion.create(title: "Promotion 3", description: "Promotion 3 Desc", imagepath: "promotion3.png", startdate: "2016-05-01", enddate: "2015-05-31")
Promotion.create(title: "Promotion 4", description: "Promotion 4 Desc", imagepath: "promotion4.png", startdate: "2016-06-01", enddate: "2016-07-31")
Promotion.create(title: "Promotion 5", description: "Promotion 5 Desc", imagepath: "promotion5.png", startdate: "2016-04-01", enddate: "2016-07-31")

 
# Order.create(customer_id:1, saledate:"2015-04-01", salenotes: "Order Number 12asdf6")
# Order.create(customer_id:1, saledate:"2015-04-01", salenotes: "Order Number 12as45dfg36")
# Order.create(customer_id:1, saledate:"2015-04-01", salenotes: "Order Number 1fgcvbcsd36")
# Order.create(customer_id:1, saledate:"2015-04-01", salenotes: "Order Number 1fdghdt45236")
# Order.create(customer_id:3, saledate:"2015-04-01", salenotes: "Order Number 5636")
# Order.create(customer_id:3, saledate:"2015-04-01", salenotes: "Order Number 123f6436")
# Order.create(customer_id:3, saledate:"2015-04-01", salenotes: "Order Number 12dasdf6")
# Order.create(customer_id:3, saledate:"2015-04-01", salenotes: "Order Number 123hjgf6")
# Order.create(customer_id:4, saledate:"2015-04-01", salenotes: "Order Number 123dgfd236")
# Order.create(customer_id:4, saledate:"2015-04-01", salenotes: "Order Number 12dfgh8236")
# Order.create(customer_id:4, saledate:"2015-04-01", salenotes: "Order Number 1237fgh")
# Order.create(customer_id:4, saledate:"2015-04-01", salenotes: "Order Number 1dgfhfgh5466")
# Order.create(customer_id:4, saledate:"2015-04-01", salenotes: "Order Number 1546fdghk36")
