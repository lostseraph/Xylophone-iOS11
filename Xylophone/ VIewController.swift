//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 27/01/2016.
//  Copyright © 2016 London App Brewery. All rights reserved.
//

import AVFoundation
import UIKit

class ViewController: UIViewController{
    
    var sound: AVAudioPlayer?

    override func viewDidLoad() {
        super.viewDidLoad()
    }



    @IBAction func notePressed(_ sender: UIButton) {
        
        let path = Bundle.main.path(forResource: "note\(sender.tag)", ofType: "wav")!
        let url = URL(fileURLWithPath: path)
        
        do {
            sound = try AVAudioPlayer(contentsOf: url)
            sound?.play()
        } catch  {
            print(error)
        }
        
    }
    
  

}

