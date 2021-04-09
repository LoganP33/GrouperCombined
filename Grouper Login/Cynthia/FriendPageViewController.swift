//
//  ViewController.swift
//  FriendPageReadytoSubmit
//
//  Created by Cynthianitza21 on 3/5/21.
//

import UIKit

class FriendPageViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!

    @IBOutlet weak var RoundButton: UIButton!
    
    
    @IBOutlet weak var nameuser: UILabel!
    
    @IBOutlet weak var FollowersLabel: UILabel!
    


    
    //func profilepic(){
        //imageView.layer.borderWidth = 3 //add border

        //imageView.layer.masksToBounds = false //allows the image to go past the frame of the image
        
        //imageView.layer.borderColor = UIColor(red: 0.03, green: 0.65, blue: 0.44, alpha: 1.00).cgColor //adds a black border (change to what ever color you need, can also be set to a gradiant.)

        //imageView.layer.cornerRadius = imageView.frame.size.width / 2 //this rounds the image by changing the degree that the corner angles are set too

        //imageView.clipsToBounds = true //causes the image to not display anthing past the established layer
   // }
    @objc func clickable(){
        print("This is working now finally")
        let storyboard = UIStoryboard.init(name: "Main", bundle: nil)
                let SecondVC = storyboard.instantiateViewController(withIdentifier: "SecomdScreenViewController")
        self.navigationController?.pushViewController(SecondVC, animated:true)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        imageView.roundedImage()
        //RoundButton.layer.cornerRadius=10
        //RoundButton.layer.masksToBounds = true
        RoundButton.roundbutton()
        
        FollowersLabel.isUserInteractionEnabled = true
        let tap = UITapGestureRecognizer.init(target: self, action: #selector(clickable))
        
        FollowersLabel.addGestureRecognizer(tap)
        nameuser.isUserInteractionEnabled = true
        
        
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func funtionbutton(_ sender: UIButton) {
        sender.setTitle("Following", for: UIControl.State.normal)
    }
    
}

