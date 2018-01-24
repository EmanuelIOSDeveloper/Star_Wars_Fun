//
//  SecondViewController.swift
//  StarWarsInfo_Swift
//
//  Created by Emanuel Pacheco on 22/01/2018.
//  Copyright © 2018 emanuelandrade. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var rotateImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
         rotateImageView.startRotating()
    }
    
}

