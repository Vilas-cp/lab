mongosh
use studentDB
db.students.insertMany([
  { name: "Amit", age: 21, department: "CSE",marks: 82, city: "Bengaluru" },
  { name: "Priya", age: 22, department: "ECE",marks: 53,  city: "Mysuru" },
  { name: "Rahul", age: 20, department: "CSE",marks: 92,  city: "Bengaluru" },
  { name: "Sneha", age: 23, department: "IT",marks: 89, city: "Chennai" },
  { name: "Vikas", age: 21, department: "MECH",marks: 22, city: "Pune" },
  { name: "Ravi", age: 22, department: "CSE",marks: 73,  city: "Hyderabad" }
])
db.students.find().pretty()
db.students.find({ city: "Bengaluru" })
db.students.find({ marks: { $gt: 80 } })

//CRUD OPERATIONS

db.students.insertOne({ name: "Kiran", age: 19, department: "CSE", marks: 82, city: "Delhi" })
db.students.find({ name: "Kiran" })
db.students.updateOne(
  { name: "Kiran" },
  { $set: { marks: 90 } }
)
db.students.deleteOne({ name: "Kiran" })
