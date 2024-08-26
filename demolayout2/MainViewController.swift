//
//  MainViewController.swift
//  demolayout2
//
//  Created by Phạm Trường Giang on 23/08/2024.
//

import UIKit

class MainViewController: UIViewController {
    
    let myView = UIView()
    let myView2 = UIView()
    
    let circleView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .orange
        view.layer.borderWidth = 1
        view.layer.borderColor = UIColor.black.cgColor
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = UIColor.yellow
        
        self.view.addSubview(myView)
        self.view.addSubview(myView2)
        self.view.addSubview(circleView)
        
        setupView()
        setupView2()
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        circleView.layer.cornerRadius = circleView.bounds.height / 2
    }
    
    func setupView(){
        //        myView.frame = CGRect(x: 0, y: 0, width: 100, height: 100)
                myView.translatesAutoresizingMaskIntoConstraints = false
                myView.backgroundColor = UIColor.red
        //        myView.center = view.center
                
                myView.topAnchor.constraint(equalTo: self.view.topAnchor).isActive = true
                myView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor).isActive = true
                myView.widthAnchor.constraint(equalToConstant: 200).isActive = true
                myView.heightAnchor.constraint(equalToConstant: 100).isActive = true
                
                myView2.translatesAutoresizingMaskIntoConstraints = false
                myView2.backgroundColor = UIColor.blue
                
                myView2.topAnchor.constraint(equalTo: myView.bottomAnchor, constant: 20).isActive = true
                myView2.leadingAnchor.constraint(equalTo: self.view.leadingAnchor).isActive = true
                myView2.widthAnchor.constraint(equalToConstant: 200).isActive = true
                myView2.heightAnchor.constraint(equalToConstant: 100).isActive = true
    }
    
    func setupView2(){
        circleView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        circleView.centerYAnchor.constraint(equalTo: self.view.centerYAnchor).isActive = true
        circleView.widthAnchor.constraint(equalTo: self.view.widthAnchor, multiplier: 0.5).isActive = true
        circleView.heightAnchor.constraint(equalTo: circleView.widthAnchor, multiplier: 1).isActive = true
        
        circleView.layer.cornerRadius = circleView.bounds.height / 2
    }
    
}
