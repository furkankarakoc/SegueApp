//
//  SecondViewController.swift
//  SegueApp
//
//  Created by Furkan Karakoc on 13.01.2023.
//

import UIKit

class SecondViewController: UIViewController {
    
    @IBOutlet weak var nameLabel: UILabel!
    var myName = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameLabel.text = myName
    }
}
