//
//  ViewController.swift
//  AnimationApp
//
//  Created by admin on 22.07.2021.
//

import Spring

class ViewController: UIViewController {

    @IBOutlet weak var coreAnimationView: UIView!
    @IBOutlet weak var springAnimationView: SpringView!

    @IBOutlet weak var coreAnimationBtn: UIButton!
    @IBOutlet weak var springAnimationBtn: SpringButton!

    @IBOutlet weak var typeOfAnimationLbl: UILabel!
    @IBOutlet weak var paramsOfAnimationLbl: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func coreAnimationBtnAction(_ sender: UIButton) {
        sender.pulsate()

        UIView.animate(withDuration: 0.2, delay: 2, options: [.autoreverse, .repeat], animations: {
                self.coreAnimationView.frame.origin.x += 10
            })
    }

    @IBAction func springAnimationBtnAction() {
        springAnimationView.animation = AnimationType.random().rawValue
        springAnimationView.curve = Curve.random().rawValue
        
        let randomForce = CGFloat(round(Double.random(in: 0...1) * 10) / 10)
        springAnimationView.force = randomForce
        
        let randomDuration = ceil(CGFloat.random(in: 1...3))
        springAnimationView.duration = randomDuration
        
        let randomDelay = CGFloat(round(Double.random(in: 0.1...1) * 10) / 10)
        springAnimationView.delay = randomDelay

        springAnimationView.animate()

        typeOfAnimationLbl.text = "Type of animtion: \(springAnimationView.animation)"

        paramsOfAnimationLbl.text = "force: \(springAnimationView.force), \n duration: \(springAnimationView.duration), \n delay: \(springAnimationView.delay)"

        springAnimationBtn.animation = AnimationType.fadeIn.rawValue
        springAnimationBtn.curve = Curve.easeOut.rawValue
        springAnimationBtn.animate()
    }

}

