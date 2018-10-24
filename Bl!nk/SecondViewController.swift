//
//  SecondViewController.swift
//  Bl!nk
//
//  Created by Ryan Widgeon on 10/22/18.
//  Copyright © 2018 Ryan Widgeon. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = Colors().mainColor
        //view.addSubview(background)
        
        

    }
    var background: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = #colorLiteral(red: 0.01366771385, green: 0.5522096753, blue: 0.5785753131, alpha: 1)
        return view

    }()
}
