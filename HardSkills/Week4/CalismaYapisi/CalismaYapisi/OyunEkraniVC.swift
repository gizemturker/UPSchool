//
//  OyunEkraniVC.swift
//  CalismaYapisi
//
//  Created by Gizem Turker on 16.04.2022.
//

import UIKit

class OyunEkraniVC: UIViewController {
    
    var kisi:Kisiler?

    override func viewDidLoad() {
        super.viewDidLoad()
        
       self.navigationItem.hidesBackButton = true 
        
        if let k = kisi {
            print("Kişi ad: \(k.ad!)")
            print("Kişi yas: \(k.yas!)")
            print("Kişi boy: \(k.boy!)")
            print("Kişi bekar: \(k.bekar!)")
        }


    }
    
    @IBAction func bittiTikla(_ sender: Any) {
        performSegue(withIdentifier: "sonucEkraninaGecis", sender: nil)
        
    }
    
    @IBAction func geriTikla(_ sender: Any) {
        
        
        // navigationController?.popViewController(animated: true)
        
        navigationController?.popToRootViewController(animated: true)
    }
    
}

