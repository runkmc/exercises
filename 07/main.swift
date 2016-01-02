import Foundation

func input() -> String {
	let inputString = NSFileHandle.fileHandleWithStandardInput().availableData
	let strData = NSString(data: inputString, encoding: NSUTF8StringEncoding)!
	return strData.stringByTrimmingCharactersInSet(NSCharacterSet.newlineCharacterSet())
}

print("What is the length of the room in feet?")
let length = Int(input())!
print("What is the width of the room in feet?")
let width = Int(input())!
let area = width * length
let meters = Double(area) * 0.09290304

print("The area is \n \(area) square feet \n \(meters) square meters.")
