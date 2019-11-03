//
//  SettingsController.swift
//  TrenerApp
//
//  Created by Resembrink Correa Egoavil on 11/3/19.
//  Copyright © 2019 Resembrink Correa Egoavil. All rights reserved.
//

import UIKit

class SettingsController: UIViewController {
    
    var username: String?
    
    override func viewDidLoad() {
        
        
        configureUI()
        
        if let username = username{
            print("Username is  \(username)")
        }else {
            print("Username not found..")
        }
    }
    
    
    @objc func handleDismiss(){
        dismiss(animated: true, completion: nil)
    }
    
    
    func  configureUI(){
        view.backgroundColor = .white
        navigationController?.navigationBar.barTintColor = .darkGray
        navigationController?.navigationBar.prefersLargeTitles = true
        navigationItem.title = "Settings"
        navigationController?.navigationBar.barStyle = .black
        
        
        navigationItem.leftBarButtonItem = UIBarButtonItem(image: #imageLiteral(resourceName: "back").withRenderingMode(.alwaysOriginal), style: .plain, target: self, action: #selector(handleDismiss))
    }
}

