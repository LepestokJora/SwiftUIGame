//
//  ViewController.swift
//  SliderKitUI
//
//  Created by Lepestok Jora on 22.01.2023.
//

import UIKit
import SwiftUI

class ViewController: UIViewController {
    
    @IBOutlet weak var sliderGameSliderUI: UISlider!
    
    @IBOutlet weak var labelValueMinTF: UITextField!
    
    @IBOutlet weak var labelValueMaxTF: UITextField!
    private var courses: [Course] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        sliderGameSliderUI.minimumValue = 0
        sliderGameSliderUI.maximumValue = 100
        
        labelValueMinTF.text = String(format: "%.2f", sliderGameSliderUI.value)
        labelValueMaxTF.text = String(format: "%.2f", sliderGameSliderUI.value)
       
    }

    @IBAction func sliderGame(_ sender: Any) {
        
        labelValueMinTF.text = String(format: "%.2f", sliderGameSliderUI.value)
        labelValueMaxTF.text = String(format: "%.2f", sliderGameSliderUI.value)
        
    }
    
    @IBSegueAction func openSluderKitUI(_ coder: NSCoder) -> UIViewController? {
        return UIHostingController(coder: coder, rootView: ContentView(courses: course))
    }
}

