import Foundation

func input() -> String {
	let inputString = NSFileHandle.fileHandleWithStandardInput().availableData
	let strData = NSString(data: inputString, encoding: NSUTF8StringEncoding)!
	return strData.stringByTrimmingCharactersInSet(NSCharacterSet.newlineCharacterSet())
}

func checkBac(ounces:Int, weight:Int, sex:String, hours:Int) -> Double {
	let ratio = sex == "M" ? 0.73 : 0.66
	return ((Double(ounces) * 5.14) / (Double(weight) * ratio)) - (0.015
	* Double(hours))
}

print("Ounces:")
let oz = Int(input())!
print("Weight:")
let weight = Int(input())!
print("Sex:")
let sex = input()
print("Hours since last drink:")
let hours = Int(input())!

let bac = checkBac(oz, weight:weight, sex:sex, hours:hours)
print(NSString(format: "Your BAC is %.2f", bac))
if bac >= 0.08 {
	print("You are not legal to drive")
} else {
	print("You are legal to drive.")
}

