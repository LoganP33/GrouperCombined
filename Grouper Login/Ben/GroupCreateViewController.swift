//
//  ViewController.swift
//  Grouper_Group_create
//
//  Created by Ben  on 3/6/21.
//

import UIKit

class GroupCreateViewController: UIViewController {
    
   
    @IBOutlet weak var descField: UITextField?
    @IBOutlet weak var GroupName: UITextField!
    @IBOutlet weak var but10: UIButton!
    @IBOutlet weak var but20: UIButton!
    @IBOutlet weak var but25: UIButton!
    @IBOutlet weak var but50: UIButton!
    @IBOutlet weak var but100: UIButton!
    @IBOutlet weak var GroupImage: UIButton!

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        descField?.textAlignment = .left
        descField?.contentVerticalAlignment = .top
      
        
        
        
    }
    
    @IBAction func button10(_ sender: Any) {
        var count:Int = 0
        count+=1
        if count % 2 != 0 {
            but10.backgroundColor = UIColor.systemGreen
        }else{
            but10.backgroundColor = UIColor.systemBackground
        
        }
        
        
    }
    
    
   
    
}

