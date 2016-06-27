//: Playground - noun: a place where people can play

import Foundation

let immutableString = "hello, playground"
var str = "Hello, playground"

str = "another string"
//immutableString = "some string"

// let is immutable 
//Var is muttable
//Do not trust the red dot
var myInt = 42
let myConstant = 50


let implicitDouble = 70.0
// Swift guesses that it is a double
let explicitDouble: Double = 70
// you tell Swift that its a double instead of int

//Example:
let division = 50/100
let division1 = 50.0/100
//End

let label = "the width is "
let width = 94
let widthLabel = label + String(width)
String(94)
let apples = 3
let oranges = 5
let appleSumary =  "I have \(apples) apples"
let orangeSumary =  "I have \(oranges) apples"

//you can refrence a var by putting \(variable)

var aFloat: Float = 6

//----------------------------------------------------------------------------------------------

var shoppngList1 = ["catfish", "water", "tulips", "blue prawns"]
shoppngList1.append("toothpaste")
//shoppngList.append(47)
// wont work beccase 47 is a integer and shoppinglist is a string list
//This can be changed by adding a 47 to the begining to make the array of all.


var shoppngList2 = ["catfish", "water", "tulips", "blue prawns",37]
var copyList = shoppngList2
shoppngList2.append("toothpaste")
shoppngList2.append(47)

// we can break it again by making it explicit

var shoppngList3 : Array<String> = ["catfish", "water", "tulips", "blue prawns"]
shoppngList3.append("toothpaste")
//now it will no longer take ints


shoppngList2
// does not get the additions to shopping list 2 it just copyed it at that moment in time


var shoppngList4 : NSMutableArray = ["catfish", "water", "tulips", "blue prawns"]
shoppngList4.addObject("toothpaste")
//DOing it this way will make a refrence instead of copying it


//----------------------------------------------------------------------------------------------

var occupation: Dictionary <String,String> = [
    "malcom": "captian",
    "kalyee": "mechanic"
    
]

// Dictionarys tske in two types

occupation ["jayne"] = "public relations"

//----------------------------------------------------------------------------------------------

var r = 50 ... 100
var g = r.generate()
g.next()
g.next()
g.next()
// used in for loops.
//intuitive

var g1 = [11,21,31,41,51].generate()
//--------------------

var tuple1 = (1,2)
tuple1.0
tuple1.1

var tuple2 = (first:"van",last:"Simmons")
tuple2.first
tuple2.last
tuple2.0
tuple2.1

//tuple is just a collection of stuff


for (k,v) in occupation{
    print("\(k),\(v)")
}

func doubler (x:Int)-> Int {
    return x*2
}

doubler(4)


func progression(v:Int,f:Int->Int) -> Int{
    return f(v)
}

progression(4, f:doubler)
// functions take and return the same type of inut
// Swift will not let you convoke anything unless it is exact same: wont take a double

var tf = true
tf = false

//booleans

var arrArr1 = [[true],[3]]

//var arrArr2:Array<Array<Bool>> = [[true],[3]]
//how do?

var arrArr2:Array<Dictionary<Int,Bool>> = [[3:true]]


var closure = { (x:Int) -> Int in
    return x*2
}


progression(6, f:closure)

//puts into the thing

progression(6) { (x:Int) -> Int in
    return x*2
}

progression(6, f:{ (x:Int) -> Int in
    return x*2
})



var occupationNames = occupation.map { (k:String, v:String) -> String in
    return k
}


// the new for loop
// map is the future



var occupationNames1 = occupation.map { $0.0}
occupationNames1

// same thing

var occupationNames2 = occupation.map { $0.0}.map{ $0; "blah"}

// same thing


var n: Int? = nil
// ? at the end says that the number could be nil.
// you need to check wether or not it is a string

//doubler(n)

// wont work beccase it needs n to be  for sure int
// int? != int
// you need to chek wether or not it is a nil

var optionalN: Int? = nil

if let n = optionalN{
    let doubleN = doubler(n)
}

// nothing happens beccase the if statment didnt fire.

var optionalN1: Int? = 14

if let n = optionalN{
    let doubleN1 = doubler(n)
}

//stuff

var implicitOptionalN: Int!

//doubler(implicitOptionalN)
// will fail
// proto! will make it the same type as the proto, but it can still be nil




// General knowledge
//----------------------------------------------------------------------------------------------
// Swift wants to know what arrays are made of




















