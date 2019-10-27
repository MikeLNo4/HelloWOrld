import Foundation

var cashOnHand:Double = 1000
var runningCash:Double = 200
var percentGain:Double = 0.02
var yearsToInvest:Int = 23
var yearsElapsed:Int = 0


runningCash = cashOnHand
repeat {
    runningCash += runningCash * percentGain
    let output = String(format: "Running Cash: %.2f", runningCash)
    print(output)
    yearsElapsed += 1
} while yearsToInvest > yearsElapsed
