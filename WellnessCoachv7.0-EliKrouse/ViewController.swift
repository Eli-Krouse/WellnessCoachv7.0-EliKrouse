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

        var forWhile: Double = diffCal
        var stepsNeeded: Double = 0
        if(totalBurn < totalIntake)
        {
            simTodayLabel.text = "eating is more than activity."
            summaryLabel.text = "you will gain " + String(format: "%.2f", pounds) + " today."
            while(forWhile>0)
            {
                stepsNeeded+=1
                forWhile -= 0.5
            }
            
            let milesCalc: Double = stepsNeeded / 2000
            
            offsetLabel.text = "you will need " + String(stepsNeeded) + "to offset intake (" + String(format:"%2f", milesCalc) + " miles)"
        } else
        {
            simTodayLabel.text = "activity is more than eating"
            summaryLabel.text = "you will lose " + String(format: "%.2f", abs(pounds)) + " today."
            offsetLabel.text = "No More Steps!"
        }
        
        
    }
    

    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
    }


}

