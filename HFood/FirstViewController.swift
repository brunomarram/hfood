//
//  FirstViewController.swift
//  HFood
//
//  Created by Bruno Marra de Melo on 07/12/19.
//  Copyright © 2019 Bruno Marra de Melo. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController, UITableViewDelegate, UITableViewDataSource,
UITabBarDelegate {

    @IBOutlet weak var table: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        table.dataSource = self
        table.delegate = self
        table.estimatedRowHeight = 100;
        table.rowHeight = 100;
    }
    
    override func viewDidAppear(_ animated: Bool){
        super.viewDidAppear(animated);
        table.reloadData();
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = table.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! PlaceTableViewCell
        
        let places = [
            [
                "title": "Supermercado Damasco",
                "grade": "8.6"
            ],
            [
                "title": "Carlinhos",
                "grade": "4.6"
            ],
            [
                "title": "Daniboy",
                "grade": "12.6"
            ]
        ]
                
        //cell.title.text = places[indexPath.row]["title"]
        //cell.grade.text = places[indexPath.row]["grade"]
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        let places = Array(repeating: 0, count: 40);
        return places.count
    }


}

