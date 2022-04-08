import UIKit

print("hello world!")

var studentName = "Gizem"
var studentSurname = "Türker"
var studentAge = 30
var studentheight = 1.73
var studentfirstCharacter = "G"
var studentSituation = true

print(studentName)
print(studentSurname)
print(studentAge)
print(studentheight)
print(studentSituation)

// veri tabanı modeli çıkartıyor gibi yazım şekli ile yazalım

var product_id:Int = 3416
var product_name:String = "Watch"
var product_quantitiy:Int = 100
var product_price:Double = 149.99
var product_supplier:String = "Rolex"


print("Product ID : \(product_id)")
print("Product Name : \(product_name)")
print("Product Quantity : \(product_quantitiy)")
print("Product Price : \(product_price) ₺")
print("Product Supplier : \(product_quantitiy)")

// Constant - Sabit

var number = 10
print(number)
number = 20
print(number)

// let de ona uygun olarak bir alan ayırıyor tekrar değiştirmeye izin vermiyor.
let nummberfirst = 100
print(nummberfirst)

// Tür Dönüşümü
// 1. sayısaldan sayısala
var i = 42
var d = 56.78

// amacım int sayısı ondalıklıya ondalıklıyı int a çevirmek istiyorum

var result1 = Double(i)
var result2 = Int(d)

print(result1)
print(result2)

// 56.78 i 57 ye yakın bir değer diyoruz ama yazılım bunun gerçekten arka planda böyle olduğunu algılamıyor 56 ve 78 i ayrı ayrı tutuyor ben . dan sonrasını silerim diyor!!! mali bir uygulamada büyük bir sorun olabilir. bunlara çok yaklaşmamak gerekli.
// 2. Sayısaldan Metine Dönüştürme

var result3 = String(i) // "42"
var result4 = String(d) // "56.78"
var result5 = "Kimyasal Oran : \(d)" //burası komple string hale geldi.

// arayüze yazdırmayı sağlıyor.

// trik 56.78 kimyasal bir oran olsa ve kimyasal oran: 56.78 de de stringleşecektir.

print(result3)
print(result4)
print(result5)

// 3. metinden sayısal hale getirme

var yazi = "500t" // 500. yazarsam çöker kontrol ederek yapmam gerek  optional


if let sonuc6 = Int(yazi) {
    print(sonuc6)
} else {
    print("Girilen veri hatalı")
}

//var sonuc6 = Int(yazi)
//print(sonuc6)

// TUPLES

var person = ("Gizem" , "Türker")
var name = person.0
var surname = person.1

print(name)
print(surname)

var point = (x:10,y:20)
print(point.x)
print(point.y)

// biri int biri string

// detay bir özelliği daha var

var errorMessage = (404, "Not Found")

var(code,message) = errorMessage
print(code)
print(message)

// // var değişkeni ilerleyen durumlarda değişebilir.


// karşılaştırma operatörleri

var x1 = 50
var x2 = 50

var y1 = 70
var y2 = 80

print(x1 == x2)
print(x1 != x2)

print(x1 > x2)
print(x1 >= x2)
print(x1 < x2)
print(x1 <= x2)


// çoklu koşul var onla ilgili de örnek yapalım
// birden fazla T f olursa

print(x1 > x2 || y1>y2) // veya or anlamına gelir: false- false : false diğer durumlarda true
print(x1>x2 && y1>y2) // and ve true true:true gerisifalse


// if yapısı,

var age = 19
var name2 = "Ahmet"

if age >= 18 {
    print("Reşitsiniz")
}else{
    print("Reşit değilsiniz")
}



if name2 == "Gizem" {
    print("Merhaba Gizem")
}else if name == "Mehemt"{
    print("Merhaba Mehmet")
}else {
    print("Tanınmayan kişi")
}


var un = "admin"
var p = 12345

if un == "admin" && p == 12345 {
    print("Hoşgeldiniz")
}else{
    print("Hatalı giriş")
}


var classLevel = 8
if classLevel == 9 || classLevel == 10 {
    print("Sınıf 9 veya 10'dur")
}else{
    print("Sınıf 9 veya 10 değildir.")
}


// switch yapısı else if yapısının daha basit hali

var day = 6

    switch day {
    case 1:
        print("Monday")
        
    case 2:
        print("Tuesday")
        
    case 3:
        print("Wednesday")
        
    case 4:
        print("Thursday")
    case 5:
        print("Friday")
        
    case 6:
        print("Saturday")
    case 7:
        print("Sunday")
    default:
        print("not found")
    }

// Döngüler

// 1,2,3 değerlerini görecem bu arada çalışan bir döngü

for i in 1...3 {
    print("Döngü 1: \(i)")
}

// 10 ile 20 arasında 5 er artış olacak


for a in stride(from: 10, through: 20, by: 5) {
    print("Döngü 2 : \(a)")
    
}


// 20 ile 10 arasında 5 er azalsın

for b in stride(from: 20, through: 10, by: -5){
    print("Döngü 3: \(b)")
}

// while döngüsü

var calculator = 1

while calculator < 4 {
    print("Döngü 4: \(calculator)")
    //calculator = calculator + 1
    calculator+=1
}



// break ve continue

// break döngüyü tamamen bitirir. continue ise bir öncekine taşır. bunları bir koşulla kullanmam gerekir.

for i in 1...5 {
    
    if i == 3 {
        break
    }
    print("Döngü 5 : \(i)")
}

// döngü 1 ve 2 oldu sonra çalışmasını durdur. bazen return de kullanılabilir break alternatifi return


for i in 1...5 {
    
    if i == 3 {
        continue
    }
    print("Döngü 6 : \(i)")
}

// i = 3 olduğunda onu pas geçecek. 3'ü atladı.

// optional - nullable null safety
// optional
// null : nil


//Boş değişken oluşturma
// nul olma durumunu ekstra ekstra  ? ! işareti kullanarak. optional tipleri var
// optional null özelliği olan dillerde boş bir ... oluşturamazsın diyor.
// 1. yöntem string?

var str:String? = nil
// tercih edilen
var str1:String? // kullanırken dikkatli olmalıyım ifadesinin bir örneği.
// ? nil olma ihtimali vardır


// ******************* nil mi değil mi
// kullanıcıdan veri gelecek içerisinde nil mi değil mi bilmiyorum. o zaman nil kontrolü yapmak gerek. nil olabilir uygulaman çökebilir.
str1 = "hello"

if str1 != nil {
    
    print(str1!) // ! işareti ile unwrapping
}else{
    print("str1 has null value.")
}

// optional binding

// modern hale getircez

// değişken aktarma

if let temp = str1 {
    print(temp)
}else{
    print("str1 has nil")
}



// if let olmak zorunda değil değeri değişmez if var da olabilir

if var temp = str1 {
    print(temp)
    temp = "Hello,world"
}else{
    print("str1 has nil")
}


