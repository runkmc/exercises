import Foundation

func input() -> String {
	let inputString = NSFileHandle.fileHandleWithStandardInput().availableData
	let strData = NSString(data: inputString, encoding: NSUTF8StringEncoding)!
	return strData.stringByTrimmingCharactersInSet(NSCharacterSet.newlineCharacterSet())
}

print("What is your current age?")
let age = Int(input())!
print("At what age would you like to retire?")
let retirementAge = Int(input())!
let currentYear = NSCalendar.currentCalendar().component(.Year, fromDate: NSDate());
let yearsLeft = retirementAge - age
let retirementYear = currentYear + yearsLeft

print("You have \(yearsLeft) years left until you can retire.")
print("It's \(currentYear), so you can retire in \(retirementYear).")
