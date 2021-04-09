//
//  ViewController.swift
//  Search3
//
//  Created by Al on 2/25/21.
//

import UIKit

class SearchViewController: UIViewController {
 
    @IBOutlet weak var searchBar: UITextField!
    
    @IBOutlet weak var Search: UITabBarItem!
    @IBOutlet weak var Profile: UITabBarItem!
    @IBOutlet weak var Groups: UITabBarItem!
    @IBOutlet weak var Settings: UITabBarItem!
    
    @IBOutlet weak var first: UIButton!
    @IBOutlet weak var second: UIButton!
    @IBOutlet weak var third: UIButton!
    
   
    @IBOutlet weak var grouplabel: UILabel!
    @IBOutlet weak var rec1: UIButton!
    @IBOutlet weak var blur: UIVisualEffectView!
    @IBOutlet weak var rec_name: UILabel!
    @IBOutlet weak var rec_quote: UILabel!
    @IBOutlet weak var rec_author: UILabel!
    @IBOutlet weak var rec_time: UILabel!
    
    //override func loadView(){
    /* view = UIView()
        view.backgroundColor = .white
        search = UITextField()
        search.translatesAutoresizingMaskIntoConstraints = false
        search.placeholder = "Test"
        search.font = UIFont.systemFont(ofSize: 24)
        search.textAlignment = .center
        search.isUserInteractionEnabled = true
        view.addSubview(search)
        NSLayoutConstraint.activate([
        search.centerXAnchor.constraint(equalTo: view.centerXAnchor),
        search.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.5)
        //search.topAnchor.constraint(equalTo: 50, constraint: 20)
        ])*/
    
        
    //}
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        first.clipsToBounds = true;
        //first.heightAnchor.constraint(equalToConstant: 122).isActive = true
        first.layer.borderWidth = 1;
        //first.layer.masksToBounds = false;
        first.layer.borderColor = UIColor.black.cgColor;
        first.layer.cornerRadius = 10;
        first.frame = CGRect(x: 6, y: 59, width :122, height: 122)
        //first.translatesAutoresizingMaskIntoConstraints = false
        //first.widthAnchor.constraint(equalToConstant: 122).isActive = true
       
        second.clipsToBounds = true;
        second.heightAnchor.constraint(equalToConstant: 122).isActive = true
        second.layer.borderWidth = 1;
        //second.layer.masksToBounds = false;
        second.layer.borderColor = UIColor.black.cgColor;
        second.layer.cornerRadius = 10;
        second.translatesAutoresizingMaskIntoConstraints = false
        second.widthAnchor.constraint(equalToConstant: 122).isActive = true
        
        third.clipsToBounds = true;
        third.layer.borderWidth = 1;
        third.layer.borderColor = UIColor.black.cgColor;
        third.layer.cornerRadius = 10;
        third.frame = CGRect(x: 264, y: 61, width :122, height: 122)
        
        //grouplabel.frame = CGRect(x: 264, y: 61, width :122, height: 122)
        rec1.clipsToBounds = true;
        rec1.layer.borderWidth = 1;
        rec1.layer.borderColor = UIColor.black.cgColor;
        rec1.layer.cornerRadius = 45;
        
        blur.clipsToBounds = true;
        blur.layer.borderWidth = 1;
        blur.layer.borderColor = UIColor.black.cgColor;
       // blur.frame = CGRect(x: 264, y: 61, width : 10, height: 122)
        blur.layer.cornerRadius = 45;
        blur.layer.maskedCorners = [.layerMinXMaxYCorner, .layerMaxXMaxYCorner]
        rec_name.frame = CGRect(x: 30, y: 550, width: 100, height: 30)
        rec_quote.frame = CGRect(x: 37, y: 470, width: 320, height: 52)
        rec_author.frame = CGRect(x: 37, y: 540, width: 100, height: 30)
        rec_time.frame = CGRect(x: 290, y: 540, width: 100, height: 30)
        
    }
    
}

/*extension ViewController : UITextFieldDelegate{
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
      
}*/

