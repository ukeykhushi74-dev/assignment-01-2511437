// OP1: insertMany() — insert all 3 documents
db.products.insertMany([
{
  product_id: "E101",
  name: "Samsung 4K Smart TV",
  category: "Electronics",
  price: 45000
},
{
  product_id: "C101",
  name: "Men Cotton T-Shirt",
  category: "Clothing",
  price: 999
},
{
  product_id: "G101",
  name: "Organic Milk",
  category: "Groceries",
  price: 80,
  expiry_date: "2024-12-30"
}
]);

// OP2: find Electronics with price > 20000
db.products.find({
category: "Electronics",
price: { $gt: 20000 }
});

// OP3: find Groceries expiring before 2025
db.products.find({
category: "Groceries",
expiry_date: { $lt: "2025-01-01" }
});

// OP4: updateOne() add discount_percent
db.products.updateOne(
{ product_id: "E101" },
{ $set: { discount_percent: 10 } }
);

// OP5: createIndex on category
db.products.createIndex({ category: 1 });
