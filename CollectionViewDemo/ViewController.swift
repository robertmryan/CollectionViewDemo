//
//  ViewController.swift
//  CollectionViewDemo
//
//  Created by Robert Ryan on 7/14/17.
//  Copyright © 2017 Robert Ryan. All rights reserved.
//

import UIKit

class ViewController: UICollectionViewController {

    var people: [Person] = [Person(firstName: "Rob", lastName: "Ryan"), Person(firstName: "Rachel", lastName: "Moore")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let indexPath = collectionView?.indexPathsForSelectedItems?.first, let destination = segue.destination as? DetailsViewController {
            destination.person = people[indexPath.row]
        }
    }
}

extension ViewController {
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return people.count
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Person", for: indexPath) as! PersonCell
        let person = people[indexPath.row]
        cell.firstNameLabel.text = person.firstName
        cell.lastNameLabel.text  = person.lastName
        return cell
    }
}
