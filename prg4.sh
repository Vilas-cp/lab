mongosh
use studentDB
db.students.insertMany([
  { _id: 1, name: "Amit", department: "CSE", marks: 85, city: "Bengaluru" },
  { _id: 2, name: "Priya", department: "ECE", marks: 92, city: "Mysuru" },
  { _id: 3, name: "Rahul", department: "CSE", marks: 78, city: "Bengaluru" },
  { _id: 4, name: "Sneha", department: "IT", marks: 88, city: "Chennai" },
  { _id: 5, name: "Vikas", department: "MECH", marks: 75, city: "Pune" }
])

//DEALING WITH NULL VALUES

//Step 1: Viewing Existing Documents
db.students.find({ $or: [{ _id: 3 }, { _id: 4 }] })

//Step 2: Adding NULL Values
db.students.updateOne({ _id: 3 }, { $set: { Location: null } })
db.students.updateOne({ _id: 4 }, { $set: { Location: null } })

//Step 3: Searching for NULL Values
db.students.find({ Location: { $eq: null } })

//Step 4: Removing Fields with NULL Values
db.students.updateOne({ _id: 3 }, { $unset: { Location: null } })
db.students.updateOne({ _id: 4 }, { $unset: { Location: null } })

//Step 5: Confirming the Change
db.students.find({ $or: [{ _id: 3 }, { _id: 4 }] }).pretty()

//Count, Limit, Sort, and Skip Operations

db.students.countDocuments()
db.students.find().sort({ marks: -1 })
db.students.find().sort({ marks: -1 }).limit(3)
db.students.find().sort({ marks: -1 }).skip(2)

//Array Operations

db.students.insertOne({
  _id: 6,
  name: "Kiran",
  department: "CSE",
  marks: 90,
  hobbies: ["Cricket", "Music", "Reading"]
})
db.students.find({ hobbies: "Music" })
db.students.updateOne(
  { name: "Kiran" },
  { $push: { hobbies: "Gaming" } }
)
db.students.updateOne(
  { name: "Kiran" },
  { $pull: { hobbies: "Reading" } }
)
db.students.find({ name: "Kiran" }).pretty()
