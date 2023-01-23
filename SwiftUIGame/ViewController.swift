//
//  ViewController.swift
//  SliderKitUI
//
//  Created by Lepestok Jora on 22.01.2023.
//

import UIKit
import SwiftUI

class ViewController: UIViewController {
    
    @IBOutlet weak var sliderGameUI: UISlider!
    
    @IBOutlet weak var labelValueMinTF: UITextField!
    
    @IBOutlet weak var labelValueMaxTF: UITextField!
    //private var courses: [Course] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        sliderGameUI.minimumValue = 0
        sliderGameUI.maximumValue = 100
        sliderGameUI.thumbTintColor = .red
        
        
        labelValueMinTF.text = String(format: "%.2f", sliderGameUI.value)
        labelValueMaxTF.text = String(format: "%.2f", sliderGameUI.value)
        
    }
    
    @IBAction func sliderGame(_ sender: Any) {
        
        labelValueMinTF.text = String(format: "%.2f", sliderGameUI.value)
        labelValueMaxTF.text = String(format: "%.2f", sliderGameUI.value)
        
    }
    
    @IBSegueAction func gameKitUi(_ coder: NSCoder) -> UIViewController? {
        //let course = courses(IndexPath.row)
        return UIHostingController(coder: coder, rootView: ContentView())
        
    }
    
    
}
