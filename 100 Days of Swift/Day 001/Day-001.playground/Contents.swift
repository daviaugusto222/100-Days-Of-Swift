import UIKit

//1. Variables
var str = "Hello, playground"
str = "Goodbye"

//2. Strings and integers
var age = 23
//underscores don't charge the number, but they do make it easier to read.
var population = 8_000_000

//3. Multi-line strings
var str1 = """
This goes
over multiple
lines
"""
//If you don’t want those line breaks end each line with a \
var str2 = """
This goes \
over multiple \
lines
"""

//4. String Interpolation
var score = 85
var str3 = "You score was \(score)"
var results = "The test results are here: \(str3)"

//5. Constants
let david = "augusto"

//6. Type annotaions
let album: String = "Chromatica"
let year: Int = 2020
let height: Double = 1.55
let gagaRocks: Bool = true
