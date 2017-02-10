import Foundation

print("What is the input string?")
let inp = readLine()
inp.map { value in
	print("\(value) has \(value.characters.count) characters.")
}
