import Foundation

func input() -> String {
	let inputString = NSFileHandle.fileHandleWithStandardInput().availableData
	let strData = NSString(data: inputString, encoding: NSUTF8StringEncoding)!
	return strData.stringByTrimmingCharactersInSet(NSCharacterSet.newlineCharacterSet())
}

func taxAmount(amount:Double, state:String) -> Double {
	switch state {
	case "WI":
		return amount * 0.055
	default:
		return 0.0
	}
}

print("What is the order amount?")
let amount = Double(input())!
print("What is the state?")
let state = input()
let tax = taxAmount(amount, state:state)

if tax > 0.0 {
	print(NSString(format:"The subtotal is $%.2f\n", amount))
	print(NSString(format:"The tax is $%.2f\n", tax))
}
print(NSString(format:"The total is $%.2f", (tax + amount)))
