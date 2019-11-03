//
//  HomeController.swift
//  TrenerApp
//
//  Created by Resembrink Correa Egoavil on 11/3/19.
//  Copyright © 2019 Resembrink Correa Egoavil. All rights reserved.
//

import UIKit

class HomeController: UIViewController
{
    // MARK: - Propiedades
    // MARK: - Inizializar
    var delegate: HomeControllerDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        configureNavigationBar()
    }
    
    // MARK: - Handlers
    
    @objc func handleMenuToggle()
    {
       delegate?.handleMenuToggle(forMenuOption: nil)
    }
    
    func configureNavigationBar()
    {
        navigationController?.navigationBar.barTintColor = .darkGray
        navigationController?.navigationBar.barStyle = .black
        
        navigationItem.title = "COLEGIO TRENER"
        navigationItem.leftBarButtonItem = UIBarButtonItem(image: #imageLiteral(resourceName: "menu").withRenderingMode(.alwaysOriginal), style: .plain, target: self, action: #selector(handleMenuToggle))
    }
}
