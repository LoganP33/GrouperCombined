//
//  SecondScreenViewController.swift
//  FriendPageReadytoSubmit
//
//  Created by Cynthianitza21 on 3/8/21.
//


import UIKit

class SecomdScreenViewController: UIViewController {

    

    @IBOutlet weak var profilepic1: UIImageView!
    @IBOutlet weak var profilepic2: UIImageView!
    
    @IBOutlet weak var follow1: UIButton!
    
    @IBOutlet weak var follow2: UIButton!
    


  
    override func viewDidLoad() {
        super.viewDidLoad()
        profilepic1.roundedImage()
        profilepic2.roundedImage()
        //RoundButton.layer.cornerRadius=10
        //RoundButton.layer.masksToBounds = true
        follow1.roundbutton()
        follow2.roundbutton()
      
        
        // Do any additional setup after loading the view.
    }

    
    @IBAction func funtionbutton(_ sender: UIButton) {
        sender.setTitle("Following", for: UIControl.State.normal)
    }
    
}
