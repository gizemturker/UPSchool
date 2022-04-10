import UIKit

// Array kullanımı

var numaralar = [10.0,20.0,30.0]
var sayilar = [Int](repeating: 0, count: 1000)


// array leri boş tanımlarız. daha sonra veri tabanından veri gelebilir.
var meyveler = [String]()
// veri ekleme
meyveler.append("Elma") // indeksi 0
meyveler.append("Muz")  // 1. index
meyveler.append("Kiraz") // 2. index
print(meyveler)

// Güncelleme nasıl yapıcaz array in adını kullanıcaz

meyveler[0] = "Yeni Elma"
print(meyveler)

// insert işlemi yine eklemek ama araya eklemek

meyveler.insert("Portakal", at: 1)
meyveler.append("Kivi")
print(meyveler)

// hazır metodlar var birçok metod var meyveler . deyin

print(meyveler.isEmpty) // boşmu diye tersten bi kontrol gibi

print(meyveler.count) // boyut kaç elemanı var

// meyveler[4] = "Kivi"   ---> append yapmazsan index out of range hatası alırsın

print(meyveler.first!)

print(meyveler.last!)


print(meyveler.contains("Muzx"))


// iterating

// içeriğe erişmek için
for meyve in meyveler {
    print("Sonuç 1: \(meyve)")
}

// index e erişmek için// hem içerik hem index

for (indeks,meyve) in meyveler.enumerated() {
    print("\(indeks). -> \(meyve)")
}

meyveler.remove(at: 1)
print(meyveler)

meyveler.removeAll()
print(meyveler)

// Array ile nesne tabanlı çalışalım

class Ogrenciler {
    var no:Int?
    var ad:String?
    var sinif:String?
    
    init(no:Int,ad:String,sinif:String) {
        self.no = no
        self.ad = ad
        self.sinif = sinif
    }
}

var o1 = Ogrenciler(no: 200, ad: "Zeynep", sinif: "9C")
var o2 = Ogrenciler(no: 300, ad: "Arzu", sinif: "11Z")
var o3 = Ogrenciler(no: 100, ad: "Beyza", sinif: "12A")

var ogrencilerListesi = [Ogrenciler]()
ogrencilerListesi.append(o1)
ogrencilerListesi.append(o2)
ogrencilerListesi.append(o3)


// nesne tabanlı yapı olmuş oluyor...

for o in ogrencilerListesi {
    print("No : \(o.no!) - Ad : \(o.ad!) - Sınıf : \(o.sinif!)")
}

// Filtreleme

var f1 = ogrencilerListesi.filter({ $0.no! > 100 }) // kotlinde it kullanılır mesela
print("Filtreleme 1")
for o in f1 {
    print("No : \(o.no!) - Ad : \(o.ad!) - Sınıf : \(o.sinif!)")
}

var f2 = ogrencilerListesi.filter({ $0.ad!.contains("yz") })
print("Filtreleme 2")
for o in f2 {
    print("No : \(o.no!) - Ad : \(o.ad!) - Sınıf : \(o.sinif!)")
}

// Sıralama
// nolar arasında kıyaslama
//büyükten küçüğe

var s1 = ogrencilerListesi.sorted(by: { $0.no! > $1.no! })
print("Sayısal olarak büyükten küçüğe")
for o in s1 {
    print("No : \(o.no!) - Ad : \(o.ad!) - Sınıf : \(o.sinif!)")
}

// küçükten büyüğe

var s2 = ogrencilerListesi.sorted(by: { $0.no! < $1.no! })
print("Sayısal olarak küçükten büyüğe")
for o in s2 {
    print("No : \(o.no!) - Ad : \(o.ad!) - Sınıf : \(o.sinif!)")
}

// sayısaldı. harfsel yapalım

var s3 = ogrencilerListesi.sorted(by: { $0.ad! > $1.ad! })
print("Metinsel olarak büyükten küçüğe")
for o in s3 {
    print("No : \(o.no!) - Ad : \(o.ad!) - Sınıf : \(o.sinif!)")
}

var s4 = ogrencilerListesi.sorted(by: { $0.ad! < $1.ad! })
print("Metinsel olarak küçükten büyüğe")
for o in s4 {
    print("No : \(o.no!) - Ad : \(o.ad!) - Sınıf : \(o.sinif!)")
}


// SET KULLANIMI
// 1. İÇERİĞİ KARIŞTIRIR. 2. YENİ VERİYİ TEKRAR EKLENMİYO

var meyveler1 = Set<String>()

// içerde karışık biyere ekliyo append add gibi sonuna ekleme yok.
meyveler1.insert("Elma")
meyveler1.insert("Portakal")
meyveler1.insert("Muz")

print(meyveler1)

// aynı eleman tekrar eklenmez

meyveler1.insert("Elma")
print(meyveler1)

// elma var elmayı eklemedi. aynı veriyi tekrar eklemez


meyveler1.insert("Amasya Elması")
print(meyveler1)

// amasya elması desek ekliyor bunu tabikide

for meyve in meyveler1 {
    print("Sonuç 1 : \(meyve)")
}

for (indeks,meyve) in meyveler1.enumerated() {
    print("\(indeks) -> \(meyve)")
}

print(meyveler1.count)

var indeks = meyveler1.firstIndex(of: "Elma")
print(meyveler1)
print(indeks!)

meyveler1.remove(at: indeks!)
print(meyveler1)

meyveler1.removeAll()
print(meyveler1)

// HashMap - Map - Dictionary

var iller = [Int:String]()

// Any - Java (object) değere istediğin değeri aktarabilirsin demek.
// Veri ekleme

iller[16] = "BURSA"
iller[34] = "İSTANBUL"

print(iller)

// Güncel

iller[16] = "YENİ BURSA"
print(iller)

for (key,value) in iller {
    print("key : \(key) - value : \(value)")
}

iller.removeValue(forKey: 16)
print(iller)

iller.removeAll()
print(iller)


// İLERİ SWİFT

//GUARD --> if in tersi if true olursa


func kisiTanima(ad:String){
    if ad == "Ahmet" {
        print("merhaba Ahmet")
        
    }else{
        print("tanınmayan kişi")
    }
}

kisiTanima(ad: "Ahmet")

func kisiTanimaGuard(ad:String){
    guard ad == "Ahmet" else {
        print("tanınmayan kişi")
        return
    }
    
    print("Merhaba Ahmet")
}
kisiTanimaGuard(ad: "Ahmetx")

// hata ayıklama

// hata uygulamanın çökmesine neden olur. bazı kodlar throw etmen gerekebilir. burda bir çalışma yap hata olabilir vs
// fonk olsun bölme ile ilgili buna bakalım
// fonk throw özelliği olması lazım enum tanımlayayım

enum Hatalar : Error {
    case sifiraBolunmeHatasi
}

func bolme(sayi1:Int,sayi2:Int) throws -> Int {
    if sayi2 == 0 {
        throw Hatalar.sifiraBolunmeHatasi
    }
    return sayi1 / sayi2
}

do {
    let sonuc = try bolme(sayi1: 10, sayi2: 0)
    print(sonuc)
    
}catch Hatalar.sifiraBolunmeHatasi {
    print("sayı sıfıra bölünemez")
}

// diğer kullanım

let sonuc1 = try? bolme(sayi1: 10, sayi2: 2)

if let temp = sonuc1 {
    print(temp)
    
}else {
    print("sayı sıfıra bölünemez")
}
