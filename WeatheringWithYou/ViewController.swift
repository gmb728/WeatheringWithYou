//
//  ViewController.swift
//  WeatheringWithYou
//
//  Created by Chang Sophia on 9/21/19.
//  Copyright © 2019 Chang Sophia. All rights reserved.
//

import UIKit
var timer: Timer?
var goal: Date!

class ViewController: UIViewController {
    
    @IBOutlet weak var sunnyTextfield: UITextField!
    
    @IBOutlet weak var sunnyDatePicker: UIDatePicker!
    
    @IBOutlet weak var dateLabel: UILabel!
    
    @IBOutlet weak var sunnySlider: UISlider!
    
 
    @IBOutlet weak var budgetLabel: UILabel!
    
    @IBOutlet weak var reserveButton: UIButton!
    
    //點空白處鍵盤消失
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
        
    }
    @IBAction func seriesSegAction(_ sender: Any) {
        //收鍵盤
        self.view.endEditing(true)
        
    }
    
    @IBAction func sunnyTextfieldAction(_ sender: Any) {
        
    }
    //祈晴時間
    @IBAction func sunnyDatePickerAction(_ sender: Any) {
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd HH:mm:ss"
        dateLabel.text = formatter.string(from: sunnyDatePicker.date)
    }
   
    //祈晴預算
    @IBAction func budgetSliderAction(_ sender: UISlider) {
   
         sender.value.round()
        budgetLabel.text = Int(sender.value*1000).description
       
    }
    
    
    @IBAction func reserveButtonPressed(_ sender: Any) {
        if sunnyTextfield.text?.isEmpty == true {
            let controller = UIAlertController(title: "Forgot the reaon?", message: "Sun is not always smile", preferredStyle: .alert)
            let okAction = UIAlertAction(title: "OK", style:.default, handler: nil)
            controller.addAction(okAction)
            self.present(controller, animated: true, completion: nil)
        }
      else if (sunnyTextfield.text?.isEmpty == false){
            let controller = UIAlertController(title: "Confirm Your Order", message: "Pray sunny for \(String(describing: sunnyTextfield.text!)),\n Pray sunny time @ \( String(describing: dateLabel.text!)),\n Budget$\(budgetLabel.text!)",   preferredStyle: .alert)
            let okAction = UIAlertAction(title: "OK", style:.default, handler: nil)
            controller.addAction(okAction)
            self.present(controller, animated: true, completion: nil)
        }
        }
    }
    
    

