//
//  ViewController.swift
//  UserInput
//
//  Created by user256361 on 5/24/24.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var FirstName: UITextField!
    
    @IBOutlet weak var LastName: UITextField!
    
    @IBOutlet weak var Country: UITextField!
    
    @IBOutlet weak var Age: UITextField!
    
    @IBOutlet weak var TextView: UITextView!

    
    
    
    @IBOutlet weak var Invisiblelabel: UILabel!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
        
    
    @IBAction func addAll(_ sender: UIButton) {
        let viewAll="Fullname : "+FirstName.text! + " " + LastName.text! + " \nCountry : " + Country.text! + " \nAge : " + Age.text!
        
        TextView.text=viewAll
    }
    
    @IBAction func clearAll(_ sender: UIButton) {
        FirstName.text=""
        LastName.text=""
        Country.text=""
        Age.text=""
    }
    
    @IBAction func submitAll(_ sender: UIButton) {
        if (FirstName.text == ""  || LastName.text == "" || Country.text == "" || Age.text == "" ) {
            Invisiblelabel.text = "Complete the missing Info!"
            
        }
        else{
            Invisiblelabel.text = "Successfully submitted!"
        }
    }
}

