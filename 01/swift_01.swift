import Foundation

print("What is your name?")
let name = readLine()
name.map { namestring in
	print("Hello, " + namestring + ", nice to meet you!")
}
