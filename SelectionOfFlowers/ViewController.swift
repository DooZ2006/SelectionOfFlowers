//
//  ViewController.swift
//  SelectionOfFlowers
//
//  Created by Глеб on 08.05.2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var redLabel: UILabel!
    @IBOutlet var greenLabel: UILabel!
    @IBOutlet var blueLabel: UILabel!
    
    @IBOutlet var meaningRedSlider: UILabel!
    @IBOutlet var meaningGreenSlider: UILabel!
    @IBOutlet var meaningBlueSlider: UILabel!
    
    @IBOutlet var redSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!
    
    @IBOutlet var colorChangeView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        colorChangeView.layer.cornerRadius = 10
        
        redSlider.value = 0.10
        greenSlider.value = 0.25
        blueSlider.value = 0.50
        
        meaningRedSlider.text = String(redSlider.value)
        meaningGreenSlider.text = String(greenSlider.value)
        meaningBlueSlider.text = String(blueSlider.value)
        
        redLabel.textColor = .red
        greenLabel.textColor = .green
        blueLabel.textColor = .blue
        
    }
    
    @IBAction func changeTheAmountOfRed() {
        meaningRedSlider.text = String(format: "%.2f", redSlider.value)
        meaningGreenSlider.text = String(format: "%.2f", greenSlider.value)
        meaningBlueSlider.text = String(format: "%.2f", blueSlider.value)
        
        changeColorView()
    }
    
    func changeColorView() {
            colorChangeView.backgroundColor = UIColor(
                red: CGFloat(redSlider.value),
                green: CGFloat(greenSlider.value),
                blue: CGFloat(blueSlider.value),
                alpha: 1
            )
        }
    
}

