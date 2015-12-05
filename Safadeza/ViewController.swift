//
//  ViewController.swift
//  Safadeza
//
//  Created by Ezequiel Dev on 12/4/15.
//  Copyright © 2015 Ezequiel. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var anjoLabel: UILabel!
    @IBOutlet var safadaoLabel: UILabel!
    @IBOutlet var datePicker: UIDatePicker!
    var yearBirth : String!
    var monthBirth : String!
    var dayBirth : String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func datePickerAction(sender: AnyObject) {
        
        let dateFormatter = NSDateFormatter()
        dateFormatter.dateFormat = "yyyy"
        yearBirth = dateFormatter.stringFromDate(datePicker.date)
        dateFormatter.dateFormat = "MM"
        monthBirth = dateFormatter.stringFromDate(datePicker.date)
        dateFormatter.dateFormat = "dd"
        dayBirth = dateFormatter.stringFromDate(datePicker.date)
        anjoLabel.text = String("Sua taxa de anjo é:  " + String(calculaAnjo()))
        safadaoLabel.text = String("Sua taxa de safadão é:  " + String(calculaSafadeza()))
    }
    
    func calculaSafadeza() -> Int {
        return (Int(monthBirth)! + (Int(yearBirth)!/100) * (50 - (Int(dayBirth)!)))
    }
    
    func calculaAnjo() -> Int {
        return 100 - calculaSafadeza()
    }

}

//safadeza = somatorio (mes)+(ano/100)*(50-dia) anjo = 100 - safadeza".