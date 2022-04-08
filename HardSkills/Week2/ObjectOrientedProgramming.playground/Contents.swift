import UIKit
import Darwin
/*
var greeting = "Hello, playground"
print(greeting)

// bir sistemi tasarlarken mümkün mertebe standartlara taslaklara aktarmamız gerekiyor.
// nesneleri soyutlarsın ve koda aktarırsın. aslında bu bir felsefe.
// e-ticaret sitesi yapıyorsun örneğin ürünler odaklı taslak oluşturmak çok faydalı olabilir. her bir ürün için ortak bir model oluşturursan ürün adedi adı fiyat id çizikli fiyat ... vs yaparsan iyi olur.
// yemeksepeti ör tedarikçiler satıcılar var onlara ait özl taslak yapılabilir
// mhrs dr-hasta özl farklı
// hep amacımız bir class oluşturmak nesne oluşturmak amaçlı .... struct class class daha fazla faydalı ??
*/

class Car {
    var color:String?
    var tork:Int?
    var fuelTank:Int?
    var transsmissionType:String?
    var fuelType:String?
    var active:Bool?
    
    init() {
        print("empty")
    }
    
    
    
// audi color .. vs hepsini atadım bu yükten kurtulmam lazım tek tek yapmayayım.
    
    // sınıfın kendisini temsil ediyorsan self kullanırım. super ifadesi : üst sınıf -kalıtım ile- temsil eder.
    // hangi color local mi yukarıdaki mi bilemez. self lazım
    
        init(color:String,tork:Int,fuelTank:Int,transsmissionType:String,fuelType:String,active:Bool) {
            self.color = color
            self.tork = tork
            self.fuelTank = fuelTank
            self.transsmissionType = transsmissionType
            self.fuelType = fuelType
            self.active = active
        }
    
    
    
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
        
        
    
    // ben nesne atadığımda arka planda değişkenler tanınmış oluyor.
    func information(){
        print("********")
        print("Color: \(color!)")
        print(tork!)
        print(transsmissionType!)
    }
}



// dolu constructor ile pratik olarak yaptım. herşeyi tek satıra aldım



    let audi_A5 = Car(color: "Black", tork: 1750, fuelTank: 54, transsmissionType: "Automatic", fuelType: "Diesel", active: true)
    audi_A5.color = "Black"

        var hyundai_i20 = audi_A5
        hyundai_i20.color = "Gray"
        print(audi_A5.color!)


// değer atama
// nesnede bir sınıfa erişmek mi istiyorum atama yapıyorum. taslaktan 1 nesnem var


//audi_A5.color = "Black"
//audi_A5.tork = 1750
//audi_A5.fuelTank = 54
//audi_A5.transsmissionType = "Automatic"

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


// durum değişikliğini sağlamış olduk!!!!!!! audi nesnesini çalıştırdığım anda spec ler çalıştı. gidip hızı vs değiştirirsek bunu değiştiren bir fonksiyon yazıp durumu değiştirdik.
// runT stopT fonksiyonları
// literatür bilgisi fonk çalıştırınca bu içerdeki değeri değiştiriyorsa side effect runT func.

// collabedit.com/nsrx4

// Yapıyı pratik hale getirelim. print satır satır pratik değil. Bunu tek satır haline getircez.


/////CONSTRUCTOR ------> IMPORTANT<-------
///Initilazition
///() init metodunun karşılığıdır.
///init() dışardan değer alabildiğimiz çname .age yerine direk person (name , age) vs aktarınca daha pratik oluyor!!
///bir sınıftan nesne oluşturduğumuz anda init çalışacaktır.
///ör veritabanında çalışma yapacağız orda gerekli olacak.. ARAŞTIR.
///
///init() boş cons. nesne oluşturulduğu anda veritabanına bağlanıp yetki veriyor. bi sınıfla uğraşırken başka sınıflardan işlem yaptırmak isteyebilirim
/// kullanılan bir yöntem senaryoda boş bir nesne oluşturup tetiklemek istediğim şeyler var mı ona göre koyacağım.
///
/// DOLU CONSTRUCTOR
//
/// analoji oluşturup farklı classlarla çalışın.


// struct class farkları
// öğrenci 1 noktasını öğrenci ikiye aktarınca aynı ref. noktasını işaret ediyor. aynı bilgiyi refere etmek. ahmet değerini kopyalasaydı hafıza anlamında bizi sıkıntıya sokabilir. öğrenci1 ve öğrenci 2 ahmet i refere
// öğrenci1 i değiştirip mehmet yaparsan öğrenci2 nin de referans noktası değişiyor.
// avantaj hafızada verilerin az yer kaplaması

// struct da ise köpek 1 kırmızı köpek2 yi köpek1 e aktarınca ise aynı değer kopyalanmış oluyor. köpek2 nin rengini değiştirirsem sadece köpek 2 değişir köpek1 değişmez
// FONKSİYONLAR //

// FONK İSİMLERİ KÜÇÜK HARFLE BAŞLAR. (PARAMETRE) OLUR ---> DÖNÜŞ TÜRÜ OLUR RETURN KULLANIRIM ORADA DA
//BAZI FONK DEĞER İLETİR GERİ DÖNÜŞ DEGERİ


// GERİ DÖNÜŞ DEĞERİ OLMAYAN (void) bu ne demek sadece işlem yapıyor bir değer döndürmüyor

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
    
    // overloading kavramı dışardan bize iki değer verirse aynı değerleri kullanma işlemi
    

    
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

// overloading kavramı


// static
// değiken ve motodlara sınıf ismi ile erişim sağlar.

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
// let b = BSinifi()  // BSinifi() aslında sanal nesnedir. tanımlaması yok isimsel birşey yapmadık.

print(BSinifi().x)
BSinifi().metod()


// Enumaration //Enum
// sistemde göreceğimiz bir yapı kurmuyoruz sunuluyor. yazılımcıyı detaydan kurtarıyor teknik değerleri ezberlemek zorunda değilim.
// clastan farklı case ile tanımlarım
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


// Composition büyük çaplı veritabanı kullanılan projelerde kullanılıyor. bilmekte fayda var

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




        class Movie {
            var duration = 0
            var description: String {
                return "The duration of the movie is \(duration) minutes"
                print("Movie: \(someMovie.description)")
            }
  
           
    
    let someMovie = Movie()
            
        
    

            
        
        class SomeSubclass : SomeSuperclass {
            // subclass definition here
        }
        class Drama:Movie {
            var effectType = "Nervous"
        }
    
}


    var audi_A5 = Car()
    audi_A5.color = "Black"

    var hyundai_i20 = audi_A5
    hyundai_i20.color = "Gray"

    print(audi_A5.color!)


class Movie {
    var duration = 0
    var description: String {
        return "The duration of the movie is \(duration) minutes"
          }
    }
