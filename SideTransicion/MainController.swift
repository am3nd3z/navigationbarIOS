//
//  MainController.swift
//  SideTransicion
//
//  Created by mac on 07/10/19.
//  Copyright © 2019 Coppel. All rights reserved.
//

import UIKit

class MainController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        NotificationCenter.default.addObserver(self,
                                               selector: #selector(showProfile),
                                               name: NSNotification.Name("ShowProfile"),
                                               object: nil)
        NotificationCenter.default.addObserver(self,
                                               selector: #selector(showSettings),
                                               name: NSNotification.Name("ShowSettings"),
                                               object: nil)
        NotificationCenter.default.addObserver(self,
                                               selector: #selector(showSignIn),
                                               name: NSNotification.Name("ShowSignIn"),
                                               object: nil)
    }
    
    @objc func showProfile(){
        performSegue(withIdentifier: "TemplateProfile", sender: nil)
    }
    
    @objc func showSettings(){
        performSegue(withIdentifier: "TemplateSettings", sender: nil)
    }
    
    @objc func showSignIn(){
        performSegue(withIdentifier: "TemplateSignIn", sender: nil)
    }
    
    @IBAction func onMoreTapped(){
        print("TOGGLE SIDE MENU")
        NotificationCenter.default.post(name: NSNotification.Name("ToggleSideMenu"),object: nil)
    }

}
