import UIKit

// 1. Tempreture Celcius--->Fahrenhiet

// Option 1

var temp:Double?
var tempCelcius = 20.0
var resultFahrenhiet = (tempCelcius * 1.8 ) + 32
print("\(tempCelcius) degrees Celcius is \(resultFahrenhiet) degrees Fahrenhiet.")

// Option 2

func findFahrenheit (tempC : Double) {
    
    let tempF:Double = (tempC * 1.8) + 32.0
    print("Result(F) : \(tempF)")
}

findFahrenheit(tempC: 22.4)



// 2. Perimeter of Rectangle
// Option 1
var a = 10
var b = 20
var rectanglePerimeter = 2 * (a + b)

// Option 2

func findRectangeP (shortEdge:Int, longEdge:Int) {
    
    let resultRectangle = (shortEdge + longEdge) * 2
    print("Perimeter of rectangle : \(resultRectangle)")
}

findRectangeP(shortEdge: 50, longEdge: 100)


// 3. Factoriel Calculation

func factorial(factorialNumber: Int) -> Int {
    if factorialNumber == 0 {
        return 1
    } else {
        return factorialNumber * factorial(factorialNumber: factorialNumber - 1)
      }
}
factorial(factorialNumber: 5)

// 4. Quantity character and word

// Option 1

var str = "My name is Gizem Türker"
var length = str.count
print( "Length of str is \(length)" )

// Option 2

    func findCharacter (sentences:String) {
        
        let totalCharacter = sentences.count
        print(totalCharacter)
    }

    findCharacter(sentences: "iOS Developer")



// 5. Total angle

//

var n = 3
var result = (n-2) * 180

//

    func totalAngle (nValue:Int) {
        if nValue >= 2 {
            let totalAngle = (nValue - 2) * 180
            print("\(nValue) total angle --> \(totalAngle)")
        } else {
            print("nValue is wrong")
        }
        
    }

    totalAngle(nValue: 1)

// 6. Total degree

var hourPrice = 10

var extraPrice = 20


func salaryTotal (dailyPrice:Int,dayCount:Int,extraHour:Int) {
    
    if extraHour > 0 {
        let salaryTotal = (8 * 10) * dayCount + (extraHour * 20)
        print("Normal salary + extra = \(salaryTotal)")
    }else{
        let salaryTotal = (8 * 10) * dayCount
        print("normalSalary : \(salaryTotal)")
    }
    
}

salaryTotal(dailyPrice: 80, dayCount: 20, extraHour: 1)

// 7. Net price


func netPrice (monthlyPrice:Int,extraNet:Int) {
    
    if extraNet > 0 {
        let netPrice = monthlyPrice + (extraNet * 4)
        print("Normal price + extra = \(netPrice)")
    }else{
        let netPrice = monthlyPrice
        print("normalprice : \(netPrice)")
    }
    
}

netPrice(monthlyPrice: 100, extraNet: 5)



