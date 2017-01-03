//
//  MainNavigationController.swift
//  LoginApp
//
//  Created by Maxim  Grozniy on 1/3/17.
//  Copyright © 2017 Maxim  Grozniy. All rights reserved.
//

import UIKit



class MainNavigationController: UINavigationController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let isLoggedIn = false
        
        
        if isLoggedIn {
            let homeController = HomeController()
            viewControllers = [homeController]
        } else {
            perform(#selector(showLoginController), with: nil, afterDelay: 0.01)
        }
        
    }
    
    func showLoginController() {
        let loginController = LoginController()
        
        present(loginController, animated: true, completion: {
            
        })
    }
    
}
