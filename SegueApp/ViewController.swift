//
//  ViewController.swift
//  SegueApp
//
//  Created by Furkan Karakoc on 13.01.2023.
//

import UIKit

class ViewController: UIViewController {
    
    var userName = ""
    
    @IBOutlet weak var nameText: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        print("viewDidLoad is called")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        print("viewWillAppear is called")
    }
    
    override func viewDidAppear(_ animated: Bool) {
            print("viewDidAppear is called")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        print("viewDidDisappear is called")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        print("viewWillDisappear is called")
        nameText.text = ""
    }
    
    @IBAction func nextPage(_ sender: Any) {
        userName = nameText.text!
        
        performSegue(withIdentifier: "secondVC", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "secondVC" {
            let destinationVC = segue.destination as! SecondViewController
            destinationVC.myName = userName
        }
    }
}

