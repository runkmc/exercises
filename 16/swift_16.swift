import Foundation

func input() -> String {
	let inputString = NSFileHandle.fileHandleWithStandardInput().availableData
	let strData = NSString(data: inputString, encoding: NSUTF8StringEncoding)!
	return strData.stringByTrimmingCharactersInSet(NSCharacterSet.newlineCharacterSet())
}

func checkAge(age:Int) -> Bool {
	if age > 15 {
		return true
	}
	return false 
}

print("What is your age? ")
let age = Int(input())!
if checkAge(age) {
	print("You are old enough to drive")
} else {
	print("You are not old enough to drive")
}
