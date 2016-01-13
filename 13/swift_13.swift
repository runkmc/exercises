import Foundation

func input() -> String {
	let inputString = NSFileHandle.fileHandleWithStandardInput().availableData
	let strData = NSString(data: inputString, encoding: NSUTF8StringEncoding)!
	return strData.stringByTrimmingCharactersInSet(NSCharacterSet.newlineCharacterSet())
}

func total(principal:Double, rate:Double, years:Double, times:Double) -> Double {
	return principal * (pow((1 + ((rate * 0.01) / times)), (times * years)))
}

print("Enter the principal:")
let principal = Double(input())!
print("Enter the rate of interest:")
let rate = Double(input())!
print("Enter the number of years:")
let years = Double(input())!
print("Enter the number of times the interest is compounded per year:")
let times = Double(input())!

print(NSString(format:"$%.0f invested at %.1f%% for %.0f years compounded %.0f times per year is $%.2f.", principal, rate, years, times, total(principal, rate:rate, years:years, times:times)))


