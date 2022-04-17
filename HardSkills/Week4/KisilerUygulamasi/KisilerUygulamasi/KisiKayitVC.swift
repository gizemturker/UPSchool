//
//  KisiKayitVC.swift
//  KisilerUygulamasi
//
//  Created by Gizem Turker on 17.04.2022.
//

import UIKit

class KisiKayitVC: UIViewController {
    @IBOutlet weak var tfKisiAd: UITextField!
    @IBOutlet weak var tfKisiTel: UITextField!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    
    @IBAction func buttonKaydet(_ sender: Any) {
        
        if let ka = tfKisiAd.text,let kt = tfKisiTel.text {
            kayit(kisi_adi: ka, kisi_tel: kt)
        }
        
        
        
    }
    
    func kayit(kisi_adi:String,kisi_tel:String){
        
        print("Kişi kayıt: \(kisi_adi) - \(kisi_tel)")
        
    }
}
