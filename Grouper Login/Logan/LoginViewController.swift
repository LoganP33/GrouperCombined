//
//  ViewController.swift
//  Grouper Login
//
//  Created by Logan Prestigiacomo on 3/4/21.
//

import UIKit
import GoogleSignIn
import FBSDKLoginKit
import FBSDKCoreKit

class ViewController: UIViewController {

    
    @IBOutlet weak var facebookButton: UIButton!
    
    
    @IBOutlet weak var appleButton: UIButton!
    
    
    @IBOutlet var googleButton: GIDSignInButton!
    
    
    @IBOutlet weak var emailButton: UIButton!
    
    var titleLabel = UILabel()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        GIDSignIn.sharedInstance()?.presentingViewController = self
    
        
        //Sign in buttons
        
        let facebookButton = IconTextButton(frame: CGRect(x: 62, y: 425, width: 300, height: 55))
        view.addSubview(facebookButton)
        facebookButton.configure(with: IconTextButtonViewModel(text: "Sign in with Facebook", image: UIImage(named:"fbLogo"), backgroundColor: .white))
        
        let appleButton = IconTextButton(frame: CGRect(x: 62, y: 490, width: 300, height: 55))
        view.addSubview(appleButton)
        appleButton.configure(with: IconTextButtonViewModel(text: "Sign in with Apple", image: UIImage(named:"appleLogo"), backgroundColor: .white))
        
        let googleButton = IconTextButton(frame: CGRect(x: 62, y: 555, width: 300, height: 55))
        view.addSubview(googleButton)
        googleButton.configure(with: IconTextButtonViewModel(text: "Sign in with Google", image: UIImage(named:"googleLogo"), backgroundColor: .white))
        
        let emailButton = IconTextButton(frame: CGRect(x: 62, y: 620, width: 300, height: 55))
        view.addSubview(emailButton)
        emailButton.configure(with: IconTextButtonViewModel(text: "Sign in with Email", image: UIImage(named:"emailLogo"), backgroundColor: .white))
        
        
        //Methods to connect to Firebase
        googleButton.addTarget(self, action: #selector(buttonAction), for: .touchUpInside)

        facebookButton.addTarget(self, action: #selector(buttonAction), for: .touchUpInside)
        
        
    }
    
//    @objc func handleCustomFBLogin() {
//        FBSDKLoginManager().logIn(withReadPermissions: ["email", "public_profile"]!, from: self)
//        { (result, err) in
//            if err != nil {
//                print("FB Login Failed:", err)
//                return
//            }
//
//            print(result?.token.tokenString)
//        }
//    }
    
    
    @objc func buttonAction(sender: UIButton!) {
      print("Button tapped")
    }
    
    

}

