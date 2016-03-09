import Foundation

func input() -> String {
	let inputString = NSFileHandle.fileHandleWithStandardInput().availableData
	let strData = NSString(data: inputString, encoding: NSUTF8StringEncoding)!
	return strData.stringByTrimmingCharactersInSet(NSCharacterSet.newlineCharacterSet())
}

print("Enter the first number:")
let one = Int(input())!
print("Enter the second number:")
let two = Int(input())!
print("Enter the third number:")
let three = Int(input())!

let largest = [one, two, three].sort(>).first!
print("The largest number is \(largest)")
