import Foundation

func input() -> String {
	let inputString = NSFileHandle.fileHandleWithStandardInput().availableData
	let strData = NSString(data: inputString, encoding: NSUTF8StringEncoding)!
	return strData.stringByTrimmingCharactersInSet(NSCharacterSet.newlineCharacterSet())
}

print("Enter a noun:")
let noun = input()
print("Enter a verb:")
let verb = input()
print("Enter a adjective:")
let adjective = input()
print("Enter a adverb:")
let adverb = input()

print("Do you \(verb) your \(adjective) \(noun) \(adverb)? That's hilarious!")
