//
//  ViewController.swift
//  WMRadarView
//
//  Created by Jaap Wijnen on 28/09/2016.
//  Copyright © 2016 Workmoose. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var radarView: WMRadarView! = nil

    override func viewDidLoad() {
        super.viewDidLoad()
        
        radarView = WMRadarView(frame: CGRect(x: 0.0, y: 0.0, width: 350.0, height: 350.0))
        radarView.center = view.center
        view.addSubview(radarView)
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

