//
//  ViewController.swift
//  imgPlayTimer03
//
//  Created by D7703_07 on 2019. 3. 28..
//  Copyright © 2019년 1234. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imgView: UIImageView!
    
    @IBOutlet weak var countLbl: UILabel!
    
    var count = 1
    var myTimer = Timer()
    var isAnimating = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        imgView.image = UIImage(named: "Image\(count)")
        countLbl.text = String(count)
    }

    @IBAction func playBtn(_ sender: UIButton) {
        print("playBtn")
        
        if isAnimating == true{ return}
        else{isAnimating = true}
        
        //Timer 작동
        myTimer = Timer.scheduledTimer(timeInterval: 0.5, target: self, selector: #selector(doAnimation), userInfo: nil, repeats: true)

    }
    
    
    
    @IBAction func psuseBtn(_ sender: UIButton) {
        myTimer.invalidate()
    }
    
    @IBAction func stopBtn(_ sender: UIButton) {
        myTimer.invalidate()
        count = 0
    }
    
    @objc func doAnimation() {
        
        if count == 5 {
            count = 1
        }
        else{
            count += 1
        }
        
        imgView.image = UIImage(named: "Image\(count)")
        countLbl.text = String(count)
    }
}

