class Pets {
    var name:String = ""
    var age:Int = 0

    func feed(){
      print("\(name) has been fed.")
    }
    func clean(){
      print("\(name) has taken a bath.")
    }
    func play(){
      print("\(name) enjoyed playing around.")
    }
    func sleep(){
      print("\(name) went to sleep.")
    }

    init(){
      name="something"
    }

    init(name:String){
      self.name = name

    }
}

class Tamagotchi:Pets{
  var hunger:Int = 0
  var boredom:Int = 0
  var dirt:Int = 0
  var drowsiness:Int  = 0

override init(name:String){
  super.init()
  self.name = name
  boredom = 60
}

  override func feed(){
    if hunger == 0{
      print("\(name) is already full.")
    }
    else{
      super.feed()
      hunger = 0
      boredom += 20
      dirt += 20
      drowsiness += 10
    }

  }
  override func clean(){
    if dirt == 0{
      print("\(name) is already clean.")
    }
    else{
      super.clean()
      dirt = 0
      boredom += 20
      hunger += 20
      drowsiness += 10
    }
  }

  override func play(){
    if boredom == 0{
      print("\(name) is already done.")
    }
    else{
      super.play()
      dirt += 10
      boredom = 0
      hunger += 20
      drowsiness += 20
    }
  }

  override func sleep(){
    if drowsiness == 0{
      print("\(name) has already slept.")
    }
    else{
      super.sleep()
      dirt += 10
      boredom += 20
      hunger += 20
      drowsiness = 0
    }
  }
  func check(){
    print("Hunger: \(hunger)")
    print("Dirt: \(dirt)")
    print("Boredom: \(boredom)")
    print("Drowsiness: \(drowsiness)")

  if hunger>=60{print("\(name) is hungry.")}
  if dirt>=60{print("\(name) is dirty.")}
  if boredom>=60{print("\(name) is bored.")}
  if drowsiness>=60{print("\(name) is sleepty.")}
}
}

var game = Tamagotchi(name:"Lulia")

for i in 1 ... 2 {
  game.sleep()
  game.feed()
  game.clean()
  game.check()
}
