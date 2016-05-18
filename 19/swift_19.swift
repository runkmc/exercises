import Foundation

func input() -> String {
	let inputString = NSFileHandle.fileHandleWithStandardInput().availableData
	let strData = NSString(data: inputString, encoding: NSUTF8StringEncoding)!
	return strData.stringByTrimmingCharactersInSet(NSCharacterSet.newlineCharacterSet())
}

func getBMI(weight:Double, height:Double) -> String {
	let bmi = (weight /	(height * height)) * 703

	switch bmi {
	case _ where bmi < 18.5:
		return NSString(format: "Your BMI is %.1f. You are underweight.", bmi) as String
	case _ where bmi > 25:
		return NSString(format: "Your BMI is %.1f. You are overweight.", bmi) as String
	default:
		return NSString(format: "Your BMI is %.1f. You are within the ideal weight range.", bmi) as String
	}
}

print("Height:")
let h = Double(input())!
print("Weight:")
let w = Double(input())!
print(getBMI(w, height:h))
