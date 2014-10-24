//
//  ViewController.swift
//  TemperatureConverter
//
//  Created by Cee on 10/24/14.
//  Copyright (c) 2014 Cee. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var celsiusLabel: UILabel!
    @IBOutlet weak var fahrenheitLabel: UILabel!
    @IBOutlet weak var kelvinLabel: UILabel!
    @IBOutlet weak var temperatureSlider: UISlider!
    @IBOutlet weak var titleLabel: UILabel!
    
    @IBAction func temperatureSliderChanged(sender: UISlider) {
        // TODO: read the current value of the slider and update the temperature displays
        self.updateTemperatureDisplays()
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        temperatureSlider.maximumValue = 100
        temperatureSlider.minimumValue = 0
        temperatureSlider.value = 30
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func updateTemperatureDisplays() {
        var c : Float = temperatureSlider.value
        var f : Float = (c * 9/5) + 32
        var k : Float = c + 273.15
        celsiusLabel.text = String(format: "%.1f", arguments: [c]) + "C"
        fahrenheitLabel.text = String(format: "%.1f", arguments: [f]) + "F"
        kelvinLabel.text = String(format: "%.1f", arguments: [k]) + "K"
    }
    
    override func viewWillLayoutSubviews() {
//        super.viewWillLayoutSubviews()
//        let screen = UIScreen.mainScreen()
//        // Always return the size of the screen in portraits orientation
//        println("screen fixed bounds: \(screen.fixedCoordinateSpace.bounds)")
//        // Since ios8, this is the size of the screen in its current orientation
//        println("screen bounds: \(screen.bounds)")
//        
//        println("top layout guide: \(topLayoutGuide.length)")
//        
//        titleLabel.frame = CGRect(x: 16, y: topLayoutGuide.length + 16, width: screen.bounds.width - 32, height: 21)
        
    }

}

