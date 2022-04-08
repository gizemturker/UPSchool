import UIKit

class Car {
    var color:String?
    var tork:Int?
    var fuelTank:Int?
    var transsmissionType:String?
    var fuelType:String?
    var active:Bool?
    
    init() {
        print("empty constructor")
    }
    
        
        init(color:String,tork:Int,fuelTank:Int,transsmissionType:String,fuelType:String,active:Bool) {
            self.color = color
            self.tork = tork
            self.fuelTank = fuelTank
            self.transsmissionType = transsmissionType
            self.fuelType = fuelType
            self.active = active
        }
    
  
    
    
    
    
    
    
    
    
    
    )
    
    func runT(){
        
        active = true
        tork = 5
        
    }
    func stopT(){
        active = false
        tork = 0
        
        
    }
    
        func speedUp(km:Int) {
            tork! += km
        }
        
        
        
        func slowDown(km:Int) {
               tork! -= km
           }
        

    func information(){
        print("********")
        print("Color: \(color!)")
        print(tork!)
        print(transsmissionType!)
    }
}





    
    
    
    
    
    
    
    
    

let audi_A5 = Car(color: "Black", tork: 1750, fuelTank: 54, transsmissionType: "Automatic", fuelType: "Diesel", active: true)


audi_A5.information()
audi_A5.stopT()
audi_A5.information()
audi_A5.runT()
audi_A5.information()
audi_A5.speedUp(km: 100)
audi_A5.information()
audi_A5.slowDown(km: 50)
audi_A5.information()

print("********")
print("Color: \(audi_A5.color!)")
print(audi_A5.tork!)
print(audi_A5.transsmissionType!)

let sahin = Car()

sahin.color = "White"
sahin.tork = 0
sahin.active = true



print("Color \(sahin.color!)")
print("Tork \(sahin.tork!)")
print("Active : \(sahin.active!)")

sahin.runT()
sahin.stopT()
sahin.speedUp(km: 30)


class Functions {
    // GERİ DÖNÜŞ DEĞERİ OLMAYAN (void)
    func selamla() -> String {
        let sonuc = "Merhaba Ahmet"
        return sonuc
    }
    
    //
    func selamla1() -> String {
        let sonuc = "Merhaba Ahmet"
        return sonuc
    }
    
    /// parametre
    func selamla2(isim:String)  {
        let sonuc = "Merhaba \(isim)"
       print(sonuc)
    }
    
    func toplama(sayi1:Int, sayi2:Int) -> Int {
        let toplam = sayi1 + sayi2
        return toplam
    }

    
    func carpma(sayi1:Int,sayi2:Int){
        print("Çarpma : \(sayi1 * sayi2)")
    }
    func carpma(sayi1:Double,sayi2:Double){
        print("Çarpma : \(sayi1 * sayi2)")
    }
    
    func carpma(sayi1:Int,sayi2:Int,isim:String){
        print("Çarpma : \(sayi1 * sayi2) - İşlemi yapan \(isim)")
    }
}

let f = Functions().self

f.selamla()

let gelenSonuc = f.selamla1()
f.selamla2(isim: "zeynep")

let gelenToplam = f.toplama(sayi1: 10, sayi2: 20)
print("Gelen toplam : \(gelenToplam)")

f.carpma(sayi1: 5, sayi2: 8)


class ASinifi {
    static var x = 10
    
    
    static func metod(){
        print("metod çalıştı")
    }
}
print(ASinifi.x)

ASinifi.metod()

    class BSinifi {
        var x = 10
        
        
         func metod(){
            print("metod çalıştı")
        }
    }

print(BSinifi().x)
BSinifi().metod()

enum KonserveBoyut {
    case kucuk
    case orta
    case buyuk
}

    func ucretHesapla(boyut:KonserveBoyut,adet:Int){
        switch boyut {
        case .kucuk:
            print("Fiyat : \(adet * 10) ₺")
        case .orta:
            print("Fiyat : \(adet * 20) ₺")
        case .buyuk:
            print("Fiyat : \(adet * 30) ₺")
        }
    }

ucretHesapla(boyut: .orta, adet: 23)




class Kategoriler {
    var kategori_id:Int?
    var kategori_adi:String?
    
    init(kategori_id:Int,kategori_adi:String){
        self.kategori_id = kategori_id
        self.kategori_adi = kategori_adi
        
    }
}

class Yonetmenler {
    var yonetmen_id:Int?
    var yonetmen_adi:String?
    
    init(yonetmen_id:Int,yonetmen_adi:String){
        self.yonetmen_id = yonetmen_id
        self.yonetmen_adi = yonetmen_adi
    }
    
}

class Filmler {
    
    var film_id:Int?
    var film_adi:String?
    var film_yil:Int?
    var kategori:Kategoriler? //comp
    var yonetmen:Yonetmenler? //comp
    
    init(film_id:Int,film_adi:String,film_yil:Int,kategori:Kategoriler,yonetmen:Yonetmenler) {
        self.film_id = film_id
        self.film_adi = film_adi
        self.film_yil = film_yil
        self.kategori = kategori
        self.yonetmen = yonetmen
        
    }
}

let k1 = Kategoriler(kategori_id: 1, kategori_adi: "Dram")
let k2 = Kategoriler(kategori_id: 2, kategori_adi: "Bilim Kurgu")

let y1 = Yonetmenler(yonetmen_id: 1, yonetmen_adi: "Quentin")
let y2 = Yonetmenler(yonetmen_id: 2, yonetmen_adi: "Chiristopher")


let f1 = Filmler(film_id: 1, film_adi: "Interseller", film_yil: 2019, kategori: k2, yonetmen: y2)

print("film id \(f1.film_id!)")
print("film id \(f1.film_adi!)")
print("film id \(f1.film_yil!)")
print("film id \(f1.kategori!.kategori_adi!)")
print("film id \(f1.yonetmen!.yonetmen_adi!)")




