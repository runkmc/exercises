import Foundation

func input() -> String {
	let inputString = NSFileHandle.fileHandleWithStandardInput().availableData
	let strData = NSString(data: inputString, encoding: NSUTF8StringEncoding)!
	return strData.stringByTrimmingCharactersInSet(NSCharacterSet.newlineCharacterSet())
}

print("What is the first number?")
let first = Int(input())!
print("What is the second number?")
let second = Int(input())!

print("\(first) + \(second) = \(first + second)")
print("\(first) - \(second) = \(first - second)")
print("\(first) * \(second) = \(first * second)")
print("\(first) / \(second) = \(first / second)")

