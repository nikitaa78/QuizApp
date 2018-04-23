//
//  ViewController.swift
//  MemberQuiz
//
//  Created by Nikita Ashok on 9/13/17.
//  Copyright © 2017 Nikita Ashok. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var startButton: UIButton!
    var backgroundImage: UIImageView!
    var blurryBackground: UILabel!
    var logoImage: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        backgroundImage = UIImageView(frame: CGRect(x: 0, y: 0, width: view.frame.width, height: view.frame.height))
        backgroundImage.image = #imageLiteral(resourceName: "background")
        backgroundImage.contentMode = .scaleAspectFill
        view.addSubview(backgroundImage)
        
        
        logoImage = UIImageView(frame: CGRect(x: view.frame.width*0.05, y: view.frame.height*0.01, width: view.frame.width*0.85, height: view.frame.height*0.55))
        logoImage.image = #imageLiteral(resourceName: "mdb_logo")
        view.addSubview(logoImage)
        
        blurryBackground = UILabel(frame: CGRect(x: 0, y: 0, width: view.frame.width, height: view.frame.height))
        blurryBackground.backgroundColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.15)
        view.addSubview(blurryBackground)
        
        startButton = UIButton(frame: CGRect(x: view.frame.width * 0.15, y: view.frame.height*0.75, width: view.frame.width*0.70, height: view.frame.height*0.10))
        startButton.backgroundColor = UIColor.init(red: 224/255, green: 89/255, blue: 109/255, alpha: 1.0)
        startButton.layer.cornerRadius = 8
        startButton.setTitle("Continue", for: .normal)
        startButton.setTitleColor(UIColor.white, for: .normal)
        startButton.addTarget(self, action: #selector(continueTapped), for: .touchUpInside)
        view.addSubview(startButton)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func continueTapped() {
        self.performSegue(withIdentifier: "toGame", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toGame" {
            print("COOL")
        }
    }


}

