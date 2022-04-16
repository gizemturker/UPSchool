//
//  ViewController.swift
//  CalismaYapisi
//
//  Created by Gizem Turker on 16.04.2022.
//
//


import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var labelAnasayfa: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Bu method 1 kere çalışır.
        
        print("viewDidLoad çalıştı")
    
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        print("viewWillDisappear çalıştı")
        // sayfa her göründüğü zaman çalışacaktır.
        // bu sayfaya geri dönüldüğünde
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        print("viewDidDisappear çalıştı")
    }

    @IBAction func baslaTikla(_ sender: Any) {
        let kisi = Kisiler(ad: "Ahmet", yas: 23, boy: 1.78, bekar: true)
       performSegue(withIdentifier: "oyunEkraninaGecis", sender: kisi)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        print("prepare metodu çalıştı")
        
        if segue.identifier == "oyunEkraninaGecis" {
            print("oyunEkraninaGecis çalıştı")
            
            if let veri = sender as? Kisiler {

                let gidilecekVC = segue.destination as! OyunEkraniVC
                gidilecekVC.kisi = veri
            }
        }
    }
    
    @IBAction func cikisTikla(_ sender: Any) {
        print("Çıkış tıklandı")
    }
    
    @IBAction func ekleCikis(_ sender: Any) {
        print("Ekle tıklandı")
    }
}

