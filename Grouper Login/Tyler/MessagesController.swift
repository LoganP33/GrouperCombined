//
//  ViewController.swift
//  messageScreen
//
//  Created by Tyler Pardue on 2/25/21.
//  Copyright © 2021 Tyler Pardue. All rights reserved.
//

import UIKit

class MessagesController: UIViewController,UIImagePickerControllerDelegate,
UINavigationControllerDelegate{
    
    

    // Photos Button Code

  
    var imagePicker: UIImagePickerController!
    
    @IBAction func photoPress(_ sender: Any) {
        imagePicker =  UIImagePickerController()
        imagePicker.delegate = self
        imagePicker.sourceType = .photoLibrary
        imagePicker.allowsEditing = true
        present(imagePicker, animated: true, completion: nil)
    }
    
    
    
    // Photos Button Code end

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
     
       
        /*
         imageView.layer.borderWidth = 1  //add border
        
        imageView.layer.masksToBounds = false //allows the image to go past the frame of the image
        
        imageView.layer.borderColor = UIColor.black.cgColor//adds a black border (change to what ever color you need, can also be set to a gradiant.)
        
        imageView.layer.cornerRadius = imageView.frame.height/2 //this rounds the image by changing the degree that the corner angles are set too
        
        imageView.clipsToBounds = true //causes the image to not display anthing past the established layer
 */
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}

