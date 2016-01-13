import Foundation

func input() -> String {
	let inputString = NSFileHandle.fileHandleWithStandardInput().availableData
	let strData = NSString(data: inputString, encoding: NSUTF8StringEncoding)!
	return strData.stringByTrimmingCharactersInSet(NSCharacterSet.newlineCharacterSet())
}

func total(principal:Double, rate:Double, years:Double) -> Double {
	return principal * (1 + ((0.01 * rate) * years))
}

print("Enter the principal:")
let principal = Double(input())!
print("Enter the rate of interest:")
let rate = Double(input())!
print("Enter the number of years:")
let years = Double(input())!

print(NSString(format: "After %.0f years at %.1f%%, the investment will be worth $%.2f.",
	  years, rate, total(principal, rate:rate, years:years)))
