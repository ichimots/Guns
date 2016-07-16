//
//  BaseViewController.swift
//  Guns
//
//  Created by Ichimots on 2016/07/07.
//  Copyright © 2016年 Ichimots. All rights reserved.
//

import UIKit

internal final class BaseViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        guard let view       = segue.destinationViewController as? ViewController,
                  identifier = segue.identifier else {
            return
        }
        
        switch identifier {
        case "pm":
            view.kindsOfWeapon = .PointMan
        case "rm":
            view.kindsOfWeapon = .RifleMan
        case "sr":
            view.kindsOfWeapon = .SniperRifle
        default:
            break
        }
    }
    
}
