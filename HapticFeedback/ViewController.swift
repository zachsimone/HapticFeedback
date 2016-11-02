//
//  ViewController.swift
//  HapticFeedback
//
//  Created by Zach Simone on 2/11/16.
//  Copyright © 2016 Zachary Simone. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let prepare = UIFeedbackGenerator()
        prepare.prepare()
    }
    
    @IBAction func error(_ sender: AnyObject) {
        
        let generator = UINotificationFeedbackGenerator()
        generator.notificationOccurred(.error)
    }
    
    @IBAction func success(_ sender: AnyObject) {
        
        let generator = UINotificationFeedbackGenerator()
        generator.notificationOccurred(.success)
    }
    
    @IBAction func warning(_ sender: AnyObject) {
        let generator = UINotificationFeedbackGenerator()
        generator.notificationOccurred(.warning)
    }
    
    @IBAction func lightImpact(_ sender: AnyObject) {
        
        let generator = UIImpactFeedbackGenerator(style: .light)
        generator.impactOccurred()
    }
    
    @IBAction func mediumImpact(_ sender: AnyObject) {
        let generator = UIImpactFeedbackGenerator(style: .medium)
        generator.impactOccurred()
    }
    
    @IBAction func heavyImpact(_ sender: AnyObject) {
        let generator = UIImpactFeedbackGenerator(style: .heavy)
        generator.impactOccurred()
    }
    
    @IBAction func other(_ sender: AnyObject) {
        let generator = UISelectionFeedbackGenerator()
        generator.selectionChanged()
    }


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()

        // Dispose of any resources that can be recreated.
    }


}

