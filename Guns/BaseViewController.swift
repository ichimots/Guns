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
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        guard let view       = segue.destination as? ViewController,
                  let identifier = segue.identifier else {
            return
        }
        
        switch identifier {
        case "pm":
            view.kindsOfWeapon = .pointMan
        case "rm":
            view.kindsOfWeapon = .rifleMan
        case "sr":
            view.kindsOfWeapon = .sniperRifle
        default:
            break
        }
    }
    
}
