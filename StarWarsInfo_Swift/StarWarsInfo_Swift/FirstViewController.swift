//
//  FirstViewController.swift
//  StarWarsInfo_Swift
//
//  Created by Emanuel Pacheco on 22/01/2018.
//  Copyright © 2018 emanuelandrade. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {

    

    @IBOutlet weak var caractersTitleLabel: UILabel!
    @IBOutlet weak var caractersCollectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        caractersCollectionView.delegate = self
        caractersCollectionView.dataSource = self
        
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated);
        //getPeopleOfStarWars()
        buildUI()
    }
    
    func buildUI() {
        caractersTitleLabel.text            = "Star Wars Caracters"
        caractersTitleLabel.backgroundColor = UIColor .black
        caractersTitleLabel.textColor       = UIColor .red

    }
    
//UICollectionView Data Source delegate
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "customCell", for: indexPath) as! CollectionViewCell
        
        cell.nameLabel.text = "Darth Maul"
        cell.specieLabel.text = "Dathomirian"
        cell.numberVehicleLabel.text = "four"
        
        return cell
    }
    
    
//Services Request
//    func getPeopleOfStarWars() {
//        Alamofire.request("https://swapi.co/api/people").responseJSON {response in
//
////            if let caractersJSON = response.result.value {
////                let caracterObject:Dictionary = caractersJSON as! Dictionary<String, Any>
////
////            }
//        }
//
//        print("Loading web service")
//    }
}

