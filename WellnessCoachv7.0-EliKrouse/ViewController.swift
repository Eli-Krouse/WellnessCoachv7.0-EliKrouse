//
//  ViewController.swift
//  WellnessCoachv7.0-EliKrouse
//
//  Created by Krouse, William E. on 2/19/26.
//

import UIKit

class ViewController: UIViewController
{
    
    
    @IBOutlet weak var MealsTextField: UITextField!
    
    @IBOutlet weak var SnacksTextField: UITextField!
    
    @IBOutlet weak var stepsTextField: UITextField!
    
    @IBOutlet weak var minutesTextField: UITextField!
    
    
    @IBOutlet weak var simTodayLabel: UILabel!
    
    @IBOutlet weak var summaryLabel: UILabel!
    
    @IBOutlet weak var offsetLabel: UILabel!
    
    
    @IBAction func SimulateButton(_ sender: UIButton)
    {
        let steps = Double(stepsTextField.text!)!
        let minutes = Double(minutesTextField.text!)!
        
        let meals = Double(MealsTextField.text!)!
        let snacks = Double(SnacksTextField.text!)!
        
        let totalIntake = meals + snacks
        let totalBurn = (steps * 0.5) + (minutes * 8)
        
        let diffCal = totalBurn - totalIntake
        
        let pounds = diffCal / 3500
        
        
        
        
    }
    

    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
    }


}

