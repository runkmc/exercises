import Foundation

func input() -> String {
	let inputString = NSFileHandle.fileHandleWithStandardInput().availableData
	let strData = NSString(data: inputString, encoding: NSUTF8StringEncoding)!
	return strData.stringByTrimmingCharactersInSet(NSCharacterSet.newlineCharacterSet())
}

func checkPassword(password:String) -> Bool {
	if password == "abc$123" {
		return true
	}
	return false
}

print("What is the password? ")
let password = input()
if checkPassword(password) {
	print("Welcome!")
} else {
	print("I don't know you.")
}
