//
//  ViewController.swift
//  SegueApp
//
//  Created by Mojave on 18.02.2020.
//  Copyright © 2020 Hulya Aydogmus. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var userName = ""
  
    @IBOutlet weak var myLabelFirst: UILabel!
    @IBOutlet weak var nameText: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        //Lifecycle
        print("viewDidLoad function called")
    }
    override func viewDidDisappear(_ animated: Bool) {
        print("viewDidDisappear function called")
    }
    override func viewWillDisappear(_ animated: Bool) {
       print("viewWillDisappear function called")
    }
    override func viewWillAppear(_ animated: Bool) {
        print("viewWillAppear function called")
        nameText.text = ""
    }
    override func viewDidAppear(_ animated: Bool) {
       print("viewDidAppear function called")
    }

    @IBAction func nextClicked(_ sender: Any) {
        userName = nameText.text!
        performSegue(withIdentifier: "toSecondVC", sender: nil)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {// segue olmadan önce yapılacak işlemler son bu ekrandan çıkmadan  my name e  user name e at be 2. ekrana bu değeri aktar
        if segue.identifier == "toSecondVC" {
           // as
            let destinationVC = segue.destination as! SecondViewController
            destinationVC.myName = userName
        }
    }
}

