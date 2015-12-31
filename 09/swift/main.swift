import Foundation

func input() -> String {
	let inputString = NSFileHandle.fileHandleWithStandardInput().availableData
	let strData = NSString(data: inputString, encoding: NSUTF8StringEncoding)!
	return strData.stringByTrimmingCharactersInSet(NSCharacterSet.newlineCharacterSet())
}

func area(length:Int, width:Int) -> Int {
	return length * width
}

func gallons(area:Int) -> Int {
	let exact = Double(area) / 350.0
	return Int(ceil(exact))
}

print("Length of the room? ")
let len = Int(input())!
print("Width of the room? ")
let wid = Int(input())!

let the_area = area(len, width:wid)
let volume = gallons(the_area)

print("You will need to purchase \(volume) gallons of paint to cover \(the_area) square feet.")

