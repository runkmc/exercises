import Foundation

func input() -> String {
	let inputString = NSFileHandle.fileHandleWithStandardInput().availableData
	let strData = NSString(data: inputString, encoding: NSUTF8StringEncoding)!
	return strData.stringByTrimmingCharactersInSet(NSCharacterSet.newlineCharacterSet())
}

extension Int {
	var toF: Int { return Int(Double(self) * (9.0 / 5) + 32) }
	var toC: Int { return Int(Double((self - 32)) * (5.0 / 9)) }
}

print("Convert to C)elsius or to F)ahrenheit? ")
let convertTo = input()
print("Temp:")
let temp = Int(input())!

switch convertTo {
case "C": print("The temperature in Celsius is \(temp.toC)")
case "F": print("The temperature in Fahrenheit is \(temp.toF)")
default: print("That didn't make sense.")
}

