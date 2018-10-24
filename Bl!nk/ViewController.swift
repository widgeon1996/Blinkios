//
//  ViewController.swift
//  Bl!nk
//
//  Created by Ryan Widgeon on 10/9/18.
//  Copyright © 2018 Ryan Widgeon. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
view.backgroundColor = #colorLiteral(red: 0.5495606065, green: 0.8889839053, blue: 0.8547484279, alpha: 1)
view.addSubview(background)
view.addSubview(label)
view.addSubview(image)
view.addSubview(text)
view.addSubview(button)
        
        text.delegate = self
        
        button.addTarget(self, action:#selector(handleTap), for: .touchUpInside)
        //button.addTarget(self, action: #selector(handlePress), for: .touchDown)
        NSLayoutConstraint.activate([
    
            label.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            label.centerYAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerYAnchor),
            label.widthAnchor.constraint(equalToConstant: label.intrinsicContentSize.width),
            label.heightAnchor.constraint(equalToConstant: label.intrinsicContentSize.height),
    
            background.topAnchor.constraint(equalTo: view.topAnchor),
            background.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            background.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            background.heightAnchor.constraint(equalToConstant: 100),
            
            image.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            image.topAnchor.constraint(equalTo: background.bottomAnchor,constant: 10),
            image.widthAnchor.constraint(equalToConstant: 200),
            image.heightAnchor.constraint(equalToConstant: 200),
            
            text.topAnchor.constraint(equalTo: image.bottomAnchor,constant: 20),
            
            button.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
            button.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant:20),
            button.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20)
    ])
        
        // Do any additional setup after loading the view, typically from a nib.
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @objc func handlePress(){
        UIView.animate(withDuration: 0.3, animations: {
            self.button.alpha = 0.5
        }
    )}
    
    @objc func handleTap(){
        UIView.animate(withDuration: 0.3, animations: {
            self.button.alpha = 1
    })
        //self.performSegue(withIdentifier: "goSecond", sender: self)
        let vc = SecondViewController()
        self.present(vc, animated: true, completion: nil)
    }
    
    var button: UIButton = {
        let b = UIButton()
        b.translatesAutoresizingMaskIntoConstraints = false
        b.backgroundColor = #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1)
        b.setTitle("Get Started", for: .normal)
        b.layer.cornerRadius = 15
        
        return b
        
        
    }()
    
    var text: UITextField = {
            let tf = UITextField()
            tf.translatesAutoresizingMaskIntoConstraints = false
        
        
        return tf
    }()
    var image: UIImageView = {
        let image = UIImage(named: "BL!NK-1")
        let i = UIImageView(image: image)
        i.translatesAutoresizingMaskIntoConstraints = false
        i.contentMode = .scaleAspectFill
        i.layer.cornerRadius = 100
        i.layer.masksToBounds = true
        
        return i
    }()

    var background: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = #colorLiteral(red: 0.01366771385, green: 0.5522096753, blue: 0.5785753131, alpha: 1)
        return view
        
    }()
    
    var label: UILabel = {
        let l = UILabel()
        l.text = ""
        l.font = UIFont.systemFont(ofSize: 50)
        l.translatesAutoresizingMaskIntoConstraints = false;
        l.textAlignment = .center
        
        return l
    }()

}

extension ViewController: UITextFieldDelegate{
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        view.endEditing(true)
        return true
    }
}
