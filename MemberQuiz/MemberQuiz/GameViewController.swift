//
//  GameViewController.swift
//  MemberQuiz
//
//  Created by Nikita Ashok on 9/14/17.
//  Copyright © 2017 Nikita Ashok. All rights reserved.
//

import UIKit

class GameViewController: UIViewController {
    
    var tLeft: UIButton!
    var tRight: UIButton!
    var bLeft: UIButton!
    var bRight: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        tLeft = UIButton(frame: CGRect(x: view.frame.width * 0.15, y: view.frame.height*0.6, width: view.frame.width*0.4, height: view.frame.height*0.15))
        tLeft.backgroundColor = UIColor.gray
        tLeft.layer.cornerRadius = 8
        tLeft.setTitle("Continue", for: .normal)
        tLeft.setTitleColor(UIColor.white, for: .normal)
        tLeft.addTarget(self, action: #selector(continueTapped), for: .touchUpInside)
        view.addSubview(tLeft)
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func continueTapped() {
        
    }
    
    
}
