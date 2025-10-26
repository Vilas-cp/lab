mongosh
use customerDB
db.Customers.insertMany([
  { CustID: "C123", CustName: "Amit", AccNo: "A101", AccType: "S", AccBal: 500 },
  { CustID: "C123", CustName: "Amit", AccNo: "A102", AccType: "S", AccBal: 900 },
  { CustID: "C123", CustName: "Amit", AccNo: "A103", AccType: "C", AccBal: 300 },
  { CustID: "C111", CustName: "Priya", AccNo: "A104", AccType: "S", AccBal: 800 },
  { CustID: "C111", CustName: "Priya", AccNo: "A105", AccType: "S", AccBal: 700 },
  { CustID: "C222", CustName: "Ravi",  AccNo: "A106", AccType: "C", AccBal: 1200 }
])
db.Customers.find().pretty()
db.Customers.aggregate([
  { $match: { AccType: "S" } }
])
db.Customers.aggregate([
  { $match: { AccType: "S" } },
  { $group: { _id: "$CustID", TotAccBal: { $sum: "$AccBal" } } }
])
db.Customers.aggregate([
  { $match: { AccType: "S" } },
  { $group: { _id: "$CustID", TotAccBal: { $sum: "$AccBal" } } },
  { $match: { TotAccBal: { $gt: 1200 } } }
])
