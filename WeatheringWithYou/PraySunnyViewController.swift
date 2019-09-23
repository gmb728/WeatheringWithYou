//
//  PraySunnyViewController.swift
//  WeatheringWithYou
//
//  Created by Chang Sophia on 9/21/19.
//  Copyright © 2019 Chang Sophia. All rights reserved.
//

import UIKit

class PraySunnyViewController: UIViewController {
    
 
    @IBOutlet weak var rainningImageView: UIImageView!
    
    @IBOutlet weak var sunnyImageView: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
      
        
       
        if self.rainningImageView.alpha == 0 {
            
            UIView.animate(withDuration: 2, delay: 0.5, options: .curveEaseIn,
                           animations: {
                            self.rainningImageView.alpha = 1.0
            })
        } else {
            UIView.animate(withDuration: 2, delay: 0.5, options: .curveEaseIn,
                           animations: {
                            self.rainningImageView.alpha = 0.0
            })
        }
        

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
