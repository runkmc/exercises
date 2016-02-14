import Foundation

func input() -> String {
	let inputString = NSFileHandle.fileHandleWithStandardInput().availableData
	let strData = NSString(data: inputString, encoding: NSUTF8StringEncoding)!
	return strData.stringByTrimmingCharactersInSet(NSCharacterSet.newlineCharacterSet())
}

func monthName(month:Int) -> String {
	var monthName: String
	switch month {
	case 1: monthName = "January"
	case 2: monthName = "February"
	case 3: monthName = "March"
	case 4: monthName = "April"
	case 5: monthName = "May"
	case 6: monthName = "June"
	case 7: monthName = "July"
	case 8: monthName = "August"
	case 9: monthName = "September"
	case 10: monthName = "October"
	case 11: monthName = "November"
	case 12: monthName = "December"
	default: monthName = "Impossible"
	}
	return monthName
}

print("Please enter the number of the month:")
let month = Int(input())!

print("The name of the month is \(monthName(month))")
