// OP1: insertMany() — insert all 3 documents

db.products.insertMany([
{
product_id: "ELEC001",
name: "Samsung Smart TV",
category: "Electronics",
price: 45000
},
{
product_id: "CLOTH001",
name: "Denim Jacket",
category: "Clothing",
price: 2999
},
{
product_id: "GROC001",
name: "Organic Almonds",
category: "Groceries",
price: 850,
expiry_date: new Date("2024-12-31")
}
]);


// OP2: find Electronics price > 20000

db.products.find({
category:"Electronics",
price:{$gt:20000}
});


// OP3: groceries expiring before 2025

db.products.find({
category:"Groceries",
expiry_date:{$lt:new Date("2025-01-01")}
});


// OP4: updateOne add discount

db.products.updateOne(
{product_id:"ELEC001"},
{$set:{discount_percent:10}}
);


// OP5: create index

db.products.createIndex({category:1});

