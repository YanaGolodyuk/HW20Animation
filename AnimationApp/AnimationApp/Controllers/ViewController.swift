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
        // тип анимации
        springAnimationView.animation = AnimationType.slideDown.rawValue
        // анимационная кривая
        springAnimationView.curve = Curve.easeIn.rawValue
        // сила
        springAnimationView.force = 3
        // продолжительность
        springAnimationView.duration = 1
        // задержка
        springAnimationView.delay = 0.1
        
        // старт анимции
        springAnimationView.animate()

        // тип анимации
        springAnimationBtn.animation = AnimationType.fadeIn.rawValue
        // анимационная кривая
        springAnimationBtn.curve = Curve.easeOut.rawValue
        // старт анимции
        springAnimationBtn.animate()
    }
    
}

