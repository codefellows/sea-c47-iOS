1
1123432534534
//this is my comment
2 + 2
2 * 3.14159265359 * 30
2 * 3.14159265359 * 10
let pi = 3.14159265359
2 * pi * 100

let myName = "Brad"
//myName = "Bob"
//pi = 345.45


func doSomething() {
  println("did something")
}

doSomething()

func addNumbers(a : Int, b: Int, c : Int) -> Int {
  //let total = a + b + c
  return a + b + c
}

addNumbers(324, 34, 2345)


//Calculate the circumference of a circle given the radius
func calculateCircumferenceForCircleGivenRadius(radius : Float) -> Float {
  let pi : Float = 3.14159265359
//  let myDoubler : Float = 2.0
  return 2.0 * pi * radius
}

//calculateCircumferenceForCircleGivenRadius(45.0)

class Stick {
  
  var broken = false
  
  var length : Int
  var width : Int
  var weight = 5
  
  var attackDamage = 20
  
  init (startingLength : Int, startingWidth : Int) {
    length = startingLength
    width = startingWidth
  }
  
  func shake() {
    println("shaking!")
    let numberOfShakes = 10
    broken = false
  }
  func breakStick() {
    broken = true
   length = length / 2
  }
  
  func sizeOfStick() -> Int {
    return width * length
  }
}

let bigStick = Stick(startingLength: 50, startingWidth: 10)
bigStick.breakStick()
bigStick.broken
bigStick.broken
bigStick.shake()

let boomStick = Stick(startingLength: 20, startingWidth: 20)
boomStick.shake()
bigStick.breakStick()
boomStick.attackDamage = 1000
let size = boomStick.sizeOfStick()
boomStick.breakStick()
let newSize = boomStick.sizeOfStick()

class SelfieStick : Stick {
  
}

let mySelfieStick = SelfieStick(startingLength: 20, startingWidth: 5)
mySelfieStick.length
mySelfieStick.breakStick()


























