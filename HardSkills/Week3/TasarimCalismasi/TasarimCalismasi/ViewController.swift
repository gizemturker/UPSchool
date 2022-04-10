//
//  ViewController.swift
//  TasarimCalismasi
//
//  Created by Gizem Turker on 10.04.2022.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
      
        self.navigationItem.title = "Pizza"
        
        let appearance = UINavigationBarAppearance()
        // backround color codes
        appearance.backgroundColor = UIColor(named: "anaRenk")
        //Başlık rengi
        
        appearance.titleTextAttributes = [.foregroundColor: UIColor(named: "yaziRenk1")!,NSAttributedString.Key.font: UIFont(name: "Pacifico-Regular", size: 22)!]
        
        
        // status bar // durum çubuğu
        
        navigationController?.navigationBar.barStyle = .black
        
        // gerçek RGB paleti istersen
        
        navigationController?.navigationBar.isTranslucent = true
        
        
        navigationController?.navigationBar.standardAppearance = appearance
        navigationController?.navigationBar.compactAppearance = appearance
        navigationController?.navigationBar.scrollEdgeAppearance = appearance
    }


}

