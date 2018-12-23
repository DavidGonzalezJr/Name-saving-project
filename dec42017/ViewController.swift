//
//  ViewController.swift
//  dec42017
//
//  Created by David Gonzalez Jr on 12/4/17.
//  Copyright © 2017 David Gonzalez Jr. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var addNewName: UITextView!
    var nameArray: [String] = []
    var nameTuple: (first: String, middle: String, last: String) = ("", "", "")
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    //to unwind from the second to the first storyboard while saving the data
    @IBAction func saveNewName(segue: UIStoryboardSegue) {
        let viewController = segue.source as! secondViewController
        let firstNameString: String = viewController.firstNameField.text ?? "John"
        let middleNameString: String = viewController.middleNameField.text ?? "David"
        let lastNameString: String = viewController.lastNameField.text ?? "Smith"
        nameArray += ["\(firstNameString) \(middleNameString) \(lastNameString)"]
        nameTuple = (firstNameString, middleNameString, lastNameString)
        var nameString: String = ""
        
        for name in nameArray {
            nameString += "\(name)\n"
        }
        addNewName.text = nameString
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let viewController = segue.destination as! secondViewController
        viewController.nameTuple = self.nameTuple
    }
    
    @IBAction func goToSecond(sender: UIButton) {
        let tag = sender.tag
        switch tag{
        case 0:
            nameTuple = ("", "", "")
        case 1:
            nameTuple = ("Jon", "Bon", "Jovi")
        default:
            print("Either Case 2 was tapped, or something really bad happened!")
        }
        performSegue(withIdentifier: "toSecondViewController", sender: sender)
    }

}

