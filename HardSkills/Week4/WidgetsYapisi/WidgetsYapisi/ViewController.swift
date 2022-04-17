//
//  ViewController.swift
//  WidgetsYapisi
//
//  Created by Gizem Turker on 16.04.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var labelSonuc: UILabel!
    
    @IBOutlet weak var textfieldGirdi: UITextField!
    
    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var mSwitch: UISwitch!
    
    
    @IBOutlet weak var segmentControl: UISegmentedControl!
    
    @IBOutlet weak var slider: UISlider!
    
    @IBOutlet weak var labelStepper: UILabel!
    
    @IBOutlet weak var stepper: UIStepper!
    
    
    @IBOutlet weak var indicator: UIActivityIndicatorView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        labelSlider.text = String(Int(slider.value))
        // sayfa yüklenince indicator gösterme
        indicator.isHidden = true
    }

    @IBAction func buttonYap(_ sender: Any) {
        
        if let alinanVeri = textfieldGirdi.text {
            labelSonuc.text = alinanVeri
        }
    }
    @IBAction func buttonResim1(_ sender: Any) {
        imageView.image = UIImage(named: "resim1")
    }
    
    @IBAction func buttonResim2(_ sender: Any) {
        imageView.image = UIImage(named: "resim2")
    }
    
    
    @IBOutlet weak var labelSlider: UILabel!
    
 
    
    @IBAction func switchKonumDegistir(_ sender: UISwitch) {
        
        if sender.isOn {
            print("Switch: ON")
        } else {
            print("Switch: OFF")
        }
    }
    
 
    
    
    @IBAction func segmentDegisimKontrol(_ sender: UISegmentedControl) {
        let secilenIndeks = sender.selectedSegmentIndex
        let secilenBaslik = sender.titleForSegment(at: secilenIndeks)
        print("Seçim: \(secilenBaslik!)")
        
    }
    
    @IBAction func sliderDegisim(_ sender: UISlider) {
        labelSlider.text = String(Int(sender.value))
        
    }
    
    
    @IBAction func stepperDegisim(_ sender: UIStepper) {
        
        labelStepper.text = String(Int(sender.value))
        
        
    }
    
    
    @IBAction func buttonBasla(_ sender: Any) {
        
        indicator.isHidden = false
        indicator.startAnimating()
    }
    
    
    @IBAction func buttonDur(_ sender: Any) {
        indicator.isHidden = true
        indicator.stopAnimating()
    }
    
    
    @IBAction func buttonGoster(_ sender: Any) {
        print("Switch durum: \(mSwitch.isOn)")
        let secilenIndeks = segmentControl.selectedSegmentIndex
        let secilenBaslik = segmentControl.titleForSegment(at: secilenIndeks)
        print("En Son Seçim: \(secilenBaslik!)")
        print("Slider: \(slider.value)")
        print("Stepper: \(stepper.value)")
    }
    

    
}

