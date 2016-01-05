import Foundation

func input() -> String {
	let inputString = NSFileHandle.fileHandleWithStandardInput().availableData
	let strData = NSString(data: inputString, encoding: NSUTF8StringEncoding)!
	return strData.stringByTrimmingCharactersInSet(NSCharacterSet.newlineCharacterSet())
}

print("Enter the price of item 1:")
let p1 = Double(input())!
print("Enter the quantity of item 1:")
let q1 = Double(input())!
print("Enter the price of item 2:")
let p2 = Double(input())!
print("Enter the quantity of item 2:")
let q2 = Double(input())!
print("Enter the price of item 3:")
let p3 = Double(input())!
print("Enter the quantity of item 3:")
let q3 = Double(input())!
let subtotal = (q1 * p1) + (q2 * p2) + (q3 * p3)
let tax =  subtotal * 0.055
let total = subtotal + tax
let subtotalString = NSString(format: "$%.2f", ((q1 * p1) + (q2 * p2) + (q3 * p3)))
let taxString = NSString(format: "$%.2f", (subtotal * 0.055))
let totalString = NSString(format: "$%.2f", (subtotal + tax))

print("Subtotal: \(subtotalString)")
print("Tax: \(taxString)")
print("Total: \(totalString)")
