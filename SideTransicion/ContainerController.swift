//
//  ViewController.swift
//  SideTransicion
//
//  Created by mac on 07/10/19.
//  Copyright © 2019 Coppel. All rights reserved.
//

import UIKit

class ContainerController: UIViewController {

    
    @IBOutlet weak var sideMenuConstraint: NSLayoutConstraint!
    
    var sideMenuOpen = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        NotificationCenter.default.addObserver(self,
                                               selector: #selector(toggleSideMenu),
                                               name: NSNotification.Name("ToggleSideMenu"),
                                               object: nil)
    }
    
   @objc func toggleSideMenu(){
        sideMenuOpen = !sideMenuOpen
    
        if sideMenuOpen{
            sideMenuConstraint.constant = -240
        }else{
            sideMenuConstraint.constant = 0
        }
    
        UIView.animate(withDuration: 0.3){
            self.view.layoutIfNeeded()
        }
    
    }


}

