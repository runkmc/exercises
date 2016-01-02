import Foundation

func input() -> String {
	let inputString = NSFileHandle.fileHandleWithStandardInput().availableData
	let strData = NSString(data: inputString, encoding: NSUTF8StringEncoding)!
	return strData.stringByTrimmingCharactersInSet(NSCharacterSet.newlineCharacterSet())
}

print("How many people? ")
let people = Int(input())!
print("How many pizzas do you have? ")
let pizzas = Int(input())!
let pieces = pizzas * 8

print("\(people) people with \(pizzas) pizzas.")
print("Each person gets \(pieces / people) pieces of pizza.")
print("There are \(pieces % people) leftover pieces.")
