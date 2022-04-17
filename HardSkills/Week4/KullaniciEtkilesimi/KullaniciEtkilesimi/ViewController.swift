//
//  ViewController.swift
//  KullaniciEtkilesimi
//
//  Created by Gizem Turker on 17.04.2022.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func buttonAlert(_ sender: Any) {
        
        let alert = UIAlertController(title: "Başlık", message: "Mesaj", preferredStyle: .alert)
        
        let iptalAction = UIAlertAction(title: "İptal", style: .destructive){ action in
            print("iptal seçildi")
        }
        alert.addAction(iptalAction)
        
        let tamamAction = UIAlertAction(title: "Tamam", style: .cancel){ action in
            print("iptal seçildi")
        }
        alert.addAction(tamamAction)
        
        self.present(alert, animated: true)
        
        
    }
    
    @IBAction func buttonActionSheet(_ sender: Any) {
        
        
        let alert = UIAlertController(title: "Başlık", message: "Mesaj", preferredStyle: .actionSheet)
        
        let iptalAction = UIAlertAction(title: "İptal", style: .destructive){ action in
            print("iptal seçildi")
        }
        alert.addAction(iptalAction)
        
        let tamamAction = UIAlertAction(title: "Tamam", style: .cancel){ action in
            print("iptal seçildi")
        }
        alert.addAction(tamamAction)
        
        self.present(alert, animated: true)
    }
    
    @IBAction func buttonOzelAlert(_ sender: Any) {
        let alert = UIAlertController(title: "Başlık", message: "Mesaj", preferredStyle: .alert)
        
        alert.addTextField() { textField in
            
            textField.placeholder = "Veri giriniz"
            textField.keyboardType = .numberPad
            textField.isSecureTextEntry = true
            
        }
        
        let kaydetAction = UIAlertAction(title: "Kaydet", style: .cancel) { action in
            
            let textField = alert.textFields![0] as UITextField
            
            if let alinanVeri = textField.text {
                print("Veri: \(alinanVeri)")
            }
               
        }
        
        alert.addAction(kaydetAction)
        
        self.present(alert, animated: true)
        
        
    }
}

