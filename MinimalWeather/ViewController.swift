//
//  ViewController.swift
//  MinimalWeather
//
//  Created by Patientman on 2016/11/27.
//  Copyright © 2016年 mingSquall. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var locationLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var weatherLabel: UILabel!
    @IBOutlet weak var tempLabel: UILabel!
    
    @IBOutlet weak var weatherImage: UIImageView!
    
    var weather = DataModel()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        weather.downloadData {
            self.updateUI()
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func updateUI() {
        dateLabel.text = weather.date
        tempLabel.text = "\(weather.temp)"
        locationLabel.text = weather.location
        weatherLabel.text = weather.weather
        weatherImage.image = UIImage(named: weather.weather)
    }
    
    
}

