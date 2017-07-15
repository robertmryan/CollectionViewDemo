//
//  DetailsViewController.swift
//  CollectionViewDemo
//
//  Created by Robert Ryan on 7/14/17.
//  Copyright © 2017 Robert Ryan. All rights reserved.
//

import UIKit

class DetailsViewController: UIViewController {

    var person: Person!
    
    @IBOutlet weak var firstNameLabel: UILabel!
    @IBOutlet weak var lastNameLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        print(person)
        
        firstNameLabel.text = person.firstName
        lastNameLabel.text  = person.lastName
    }

}
