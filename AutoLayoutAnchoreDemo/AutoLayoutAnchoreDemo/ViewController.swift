//
//  ViewController.swift
//  AutoLayoutAnchoreDemo
//
//  Created by Vaibhav Sharma on 13/06/19.
//  Copyright © 2019 Vaibhav Sharma. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let colors = Colors()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        refresh()
        self.view.addSubview(imageView)
        ///apply constraints
        imageView.applyDefaultContraints(top : 50, height: 100, width: 100, centerX: 0 , toView: self.view)
        //textField
        self.view.addSubview(textField)
        textField.placeholder = "First Name eg ajay,vijay,sunder,veer......."
        textField.topAnchor.constraint(equalTo: imageView.bottomAnchor, constant:100).isActive = true
         textField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant:30).isActive = true
         textField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant:-30).isActive = true
        textField.heightAnchor.constraint(equalToConstant: 30).isActive = true
        self.view.addSubview(textField2)
        textField2.placeholder = "Last Name eg pal,sharma,verma,pundeer......."
        textField2.topAnchor.constraint(equalTo: textField.bottomAnchor, constant:30).isActive = true
        textField2.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant:30).isActive = true
        textField2.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant:-30).isActive = true
        textField2.heightAnchor.constraint(equalToConstant: 30).isActive = true
        self.view.addSubview(sumButton)
        sumButton.topAnchor.constraint(equalTo: textField2.bottomAnchor, constant:30).isActive = true
        sumButton.leadingAnchor.constraint(equalTo: textField2.leadingAnchor, constant:30).isActive = true
        sumButton.trailingAnchor.constraint(equalTo: textField2.trailingAnchor, constant: -30).isActive = true
        sumButton.heightAnchor.constraint(equalToConstant: 44).isActive = true
        self.view.addSubview(forgotButton)
      
        forgotButton.topAnchor.constraint(equalTo: sumButton.bottomAnchor, constant:30).isActive = true
        forgotButton.leadingAnchor.constraint(equalTo: sumButton.leadingAnchor, constant:30).isActive = true
        forgotButton.trailingAnchor.constraint(equalTo: sumButton.trailingAnchor, constant: -30).isActive = true
        forgotButton.heightAnchor.constraint(equalToConstant: 44).isActive = true
        
        self.view.addSubview(newUserButton)
        
        newUserButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant:-30).isActive = true
        newUserButton.leadingAnchor.constraint(equalTo: forgotButton.leadingAnchor, constant:30).isActive = true
        newUserButton.trailingAnchor.constraint(equalTo: forgotButton.trailingAnchor, constant: -30).isActive = true
        newUserButton.heightAnchor.constraint(equalToConstant: 44).isActive = true
    }
    
    //create image view
    let imageView : UIImageView = {
        let imageView  = UIImageView()
        imageView.image = UIImage(named: "download") ?? UIImage()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFit
        imageView.clipsToBounds = true
        return imageView
    }()
    
    //create textField view
    let textField : UITextField = {
        let textField  = UITextField()
        textField.backgroundColor = UIColor.white
        textField.clipsToBounds = true
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
    }()
    
    //create textField view
    let textField2 : UITextField = {
        let textField  = UITextField()
        textField.backgroundColor = UIColor.white
        textField.clipsToBounds = true
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
    }()
    
    func refresh() {
        view.backgroundColor = UIColor.clear
        let backgroundLayer = colors.gl
        backgroundLayer?.frame = view.frame
        view.layer.insertSublayer(backgroundLayer ?? CALayer(), at: 0)
    }
    //create Button
    let sumButton : UIButton = {
        let sumButton  = UIButton()
        sumButton.backgroundColor = UIColor.red
        sumButton.layer.borderWidth = 2.0
        sumButton.layer.borderColor = UIColor.white.cgColor
        sumButton.setTitle("Submit", for: .normal)
        sumButton.clipsToBounds = true
        sumButton.translatesAutoresizingMaskIntoConstraints = false
        return sumButton
    }()
    //create Button
    let forgotButton : UIButton = {
        let forgotButton  = UIButton()
        forgotButton.backgroundColor = UIColor.clear
        forgotButton.layer.borderWidth = 2.0
        forgotButton.layer.borderColor = UIColor.white.cgColor
        forgotButton.setTitle("Forgot Password", for: .normal)
        forgotButton.clipsToBounds = true
        forgotButton.translatesAutoresizingMaskIntoConstraints = false
        return forgotButton
    }()
    //create Button
    let newUserButton : UIButton = {
        let newUserButton  = UIButton()
        newUserButton.backgroundColor = UIColor.clear
        newUserButton.layer.borderWidth = 2.0
        newUserButton.layer.borderColor = UIColor.white.cgColor
        newUserButton.setTitle("New User ? signUp", for: .normal)
        newUserButton.clipsToBounds = true
        newUserButton.translatesAutoresizingMaskIntoConstraints = false
        return newUserButton
    }()
}

extension UIView {
    
    func applyDefaultContraints(top : CGFloat? = nil, bottom: CGFloat? = nil, leading : CGFloat? = nil ,trailing : CGFloat? = nil, height : CGFloat? = nil, width : CGFloat? = nil, centerX : CGFloat? = nil, centerY : CGFloat? = nil, toView: UIView)  {
        if let top = top {
            topAnchor.constraint(equalTo: toView.topAnchor, constant: top).isActive = true
        }
          if let bottomCont = bottom {
            bottomAnchor.constraint(equalTo: toView.bottomAnchor, constant: bottomCont).isActive = true
        }
        if let leadingConst = leading {
             leadingAnchor.constraint(equalTo: toView.leadingAnchor, constant: leadingConst).isActive = true
        }
        if let trailing = trailing {
            trailingAnchor.constraint(equalTo: toView.trailingAnchor, constant: trailing).isActive = true
        }
        if let centerXCont = centerX {
            centerXAnchor.constraint(equalTo: toView.centerXAnchor, constant: centerXCont).isActive = true
        }
        if let widthCont = width {
            widthAnchor.constraint(equalToConstant: widthCont).isActive = true
        }
        if let centerYCont = centerY {
            centerYAnchor.constraint(equalTo: toView.centerYAnchor, constant: centerYCont).isActive = true
        }
        if let heightConst = height {
             heightAnchor.constraint(equalToConstant: heightConst).isActive = true
        }
    }
}

//Apply Gredient Color
class Colors {
    var gl:CAGradientLayer!
    
    init() {
        let colorTop = UIColor(red: 2.0 / 255.0, green: 108.0 / 255.0, blue: 180.0 / 255.0, alpha: 1.0).cgColor
        let colorBottom = UIColor(red: 2.0 / 255.0, green: 188.0 / 255.0, blue: 225.0 / 255.0, alpha: 1.0).cgColor
        
        self.gl = CAGradientLayer()
        self.gl.colors = [colorTop, colorBottom]
        self.gl.locations = [0.0, 1.0]
    }
}
