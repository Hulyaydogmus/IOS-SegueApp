//
//  SecondViewController.swift
//  SegueApp
//
//  Created by Mojave on 18.02.2020.
//  Copyright © 2020 Hulya Aydogmus. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

   
    @IBOutlet weak var myLabelSecond: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    
    var myName = ""
    
    override func viewDidLoad() {// ekran açılır açılmaz  1. ekrandan gelen değeri al ve namelabel ın textine yazdır.
        super.viewDidLoad()

        nameLabel.text = myName
       
    }
    



}
