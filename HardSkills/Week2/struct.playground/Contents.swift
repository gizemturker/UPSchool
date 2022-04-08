import UIKit

    struct Car {
        var color:String?
        var tork:Int?
        var fuelTank:Int?
        var transsmissionType:String?
        var fuelType:String?
        var active:Bool?
    }

        var audi_A5 = Car()
        audi_A5.color = "Black"

        var hyundai_i20 = audi_A5
        hyundai_i20.color = "Gray"

        print(audi_A5.color!)
