mongosh
use student
db.students.insertMany([
  { name: "Amit", age: 21, department: "CSE", city: "Bengaluru" },
  { name: "Priya", age: 22, department: "ECE",  city: "Mysuru" },
  { name: "Rahul", age: 20, department: "CSE",  city: "Bengaluru" },
  { name: "Sneha", age: 23, department: "IT", city: "Chennai" },
  { name: "Vikas", age: 21, department: "MECH", city: "Pune" },
  { name: "Ravi", age: 22, department: "CSE",  city: "Hyderabad" }
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
