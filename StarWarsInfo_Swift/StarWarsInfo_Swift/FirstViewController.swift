//
//  FirstViewController.swift
//  StarWarsInfo_Swift
//
//  Created by Emanuel Pacheco on 22/01/2018.
//  Copyright © 2018 emanuelandrade. All rights reserved.
//

import UIKit
import Alamofire

class FirstViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
   
    @IBOutlet weak var caractersTitleLabel: UILabel!
    @IBOutlet weak var caractersTableView: UITableView!
    
    var caracters = [Any]()
    static let kResults = "results"
    static let kName = "name"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        caractersTableView.delegate = self;
        caractersTableView.dataSource = self;
    
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated);
        //getPeopleOfStarWars()
        buildUI()
    }
    
    func buildUI() {
        caractersTitleLabel.text = "Star Wars Caracters"
        caractersTableView.tableFooterView = UIView()

    }
 // UITableView Data Source delegates
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       // return self.caracters.count
        return 6;
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = caractersTableView.dequeueReusableCell(withIdentifier: "customCell") as! CaractersTableViewCell
        //let caracterName:NSString = self.caracters[indexPath.row] as! NSString
        //cell.caracterNameLabel.text = caracterName as String
        
        cell.caracterNameLabel.text = "Darth Maul"
        cell.caracterSpecieLabel.text = "Dathomirian"
        cell.caracterVehicleNumberLabel.text = "1"
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 88.0
    }
    
//Services Request
    func getPeopleOfStarWars() {
//        Alamofire.request("https://swapi.co/api/people/?page=1").responseJSON { response in
//
//            if let json = response.result.value {
//                let caractersObjects:Dictionary = json as!Dictionary<String, Any>
//
//                let nextObject:NSArray = caractersObjects[FirstViewController.kResults] as! NSArray
//                self.caracters =  nextObject as! [NSArray]
//            }
//
//        }
    }

}
