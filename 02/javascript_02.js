const readline = require('readline');
const rl = readline.createInterface({
	input: process.stdin,
	output: process.stdout
});

rl.question('What is the input string? ', (input) => {
	console.log(input + ' has ' + input.length + ' characters');
	rl.close()
});
