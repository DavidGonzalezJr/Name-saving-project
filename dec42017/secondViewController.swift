//
//  secondViewController.swift
//  dec42017
//
//  Created by David Gonzalez Jr on 12/4/17.
//  Copyright © 2017 David Gonzalez Jr. All rights reserved.
//

import UIKit

class secondViewController: UIViewController {
    
    @IBOutlet weak var firstNameField: UITextField!
    @IBOutlet weak var middleNameField: UITextField!
    @IBOutlet weak var lastNameField: UITextField!
    var nameTuple: (first: String, middle: String, last: String) = ("", "", "")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        firstNameField.text = nameTuple.first
        middleNameField.text = nameTuple.middle
        lastNameField.text = nameTuple.last
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //To dismiss the second view controller to go back to the first
    @IBAction func dismissViewController() {
        dismiss(animated: true, completion: nil)
    }
    
    //To make sure that the first name and last name have inputs and perform the segue only if the first and last name are filled
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        if firstNameField.text == "" || lastNameField.text == "" {
            return false
        }
        return true
    }
    
    
    
    
    
    
    
    
    
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
