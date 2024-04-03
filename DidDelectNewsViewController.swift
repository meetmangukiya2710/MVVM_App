//
//  DidDelectNewsViewController.swift
//  MVVM_App
//
//  Created by R95 on 03/04/24.
//

import UIKit

class DidDelectNewsViewController: UIViewController {
    
    @IBOutlet weak var titleLabelOutlet: UILabel!
    @IBOutlet weak var discriptionLabelOutlet: UILabel!
    
    var titleLable = ""
    var descriptionLable = ""

    override func viewDidLoad() {
        super.viewDidLoad()
        
        titleLabelOutlet.text = titleLable
        discriptionLabelOutlet.text = descriptionLable
    }
   

}
