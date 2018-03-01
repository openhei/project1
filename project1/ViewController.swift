//
//  ViewController.swift
//  project1
//
//  Created by Christopher Yi on 2/24/18.
//  Copyright © 2018 Christopher Yi. All rights reserved.
//

import UIKit
import Lottie
class ViewController: UIViewController {

    @IBOutlet weak var labelsStackView: UIStackView!
    @IBOutlet weak var label1: UILabel! {
        didSet {
            label1.numberOfLines = 0
        }
    }
    @IBOutlet weak var label2: UILabel! {
        didSet {
            label2.numberOfLines = 0
        }
    }
    
    var animationView: LOTAnimationView!
    var isTextVisible = true
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
     
        playAnimation()
   
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    fileprivate func playAnimation() {
        animationView = LOTAnimationView(name: "servishero_loading")
        animationView.frame = CGRect(x: 0, y: 0, width: 200, height: 200)
        animationView.center = self.view.center
        animationView.contentMode = .scaleAspectFill
        
        view.addSubview(animationView)
        
        animationView.play()
      
    }
    
    @IBAction func buttonPressed(_ sender: UIButton) {
        if isTextVisible{
            label1.text = "Hello Everyone!"
            label2.text = "This is from  chris at the end of the world "
        }else {
            label1.text = ""
            label2.text = ""
        }
        isTextVisible = !isTextVisible
        if !animationView.isAnimationPlaying {
            playAnimation()
        }
        
    }
    
}

