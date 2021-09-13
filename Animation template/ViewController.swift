//
//  ViewController.swift
//  Animation template
//
//  Created by Mohammad Kiani on 2021-01-17.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var imageView: UIImageView!
    
    var isAnimating = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func playImages(_ sender: UIButton) {
        imageView.animationImages = [
            UIImage(named:"frame_0_delay-0.1s.gif")!,
            UIImage(named:"frame_1_delay-0.1s.gif")!,
            UIImage(named:"frame_2_delay-0.1s.gif")!,
            UIImage(named:"frame_3_delay-0.1s.gif")!,
            UIImage(named:"frame_4_delay-0.1s.gif")!,
            UIImage(named:"frame_5_delay-0.1s.gif")!
           ]
        
        imageView.animationDuration = 1
        
        //repeats animation
        //0 means infinite loop
        imageView.animationRepeatCount = 0
       
        if isAnimating {
            imageView.stopAnimating()
            isAnimating = false
            //to stop the image from continues playing
            //set the button sender title from play to stop
            sender.setTitle("play", for: .normal)
        } else {
            imageView.startAnimating()
            isAnimating = true
            //to stop the image from continues playing
            //set the button sender title from play to stop
            sender.setTitle("stop", for: .normal)
        }
              
    }
    
    
    @IBAction func fadeIn() {
        imageView.alpha = 0
        UIView.animate(withDuration: 5) {
            self.imageView.alpha = 1
        }
    }
    
    @IBAction func slideIn() {
    }
        
    @IBAction func grow() {
    }
}


