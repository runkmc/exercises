import Foundation

func input() -> String {
	let inputString = NSFileHandle.fileHandleWithStandardInput().availableData
	let strData = NSString(data: inputString, encoding: NSUTF8StringEncoding)!
	return strData.stringByTrimmingCharactersInSet(NSCharacterSet.newlineCharacterSet())
}

func exchange(euros: Double, rate: Double) -> Double {
	return (euros * (rate / 100))
}

print("How many euros are you exchanging? ")
let euros = Double(input())!
print("What is the conversion rate? ")
let rate = Double(input())!

print(NSString(format: "%.2f euros at an exchange rate of %.2f is $%.2f U.S. Dollars", euros, rate, exchange(euros, rate: rate)))
