//
//  WeaponManager.swift
//  Guns
//
//  Created by Ichimots on 2016/07/03.
//  Copyright © 2016年 Ichimots. All rights reserved.
//

import Foundation


enum WeaponType: String {
    case PointMan    = "PM"
    case RifleMan    = "RM"
    case SniperRifle = "SR"
}

internal struct WeaponManager {
    
    func getWeapon(type: WeaponType) -> [Weapon] {
        
        let path = NSBundle.mainBundle().pathForResource("weapons", ofType: "plist")
        let dictionary = NSDictionary(contentsOfFile: path!)
        
        let weaponObjects = dictionary?.objectForKey(type.rawValue) as! [[String: AnyObject]]
        
        var weapons = [Weapon]()
        weaponObjects.forEach{ weapons.append(weaponMapping($0)) }
        
        return weapons
    }
    
    private func weaponMapping(item: [String: AnyObject]) -> Weapon {
        
        return Weapon(name                 : item["武器名"] as! String,
                      damage               : Damage(average: item["平均攻撃力"] as! Double,
                                                    min    : item["最小攻撃力"] as! Double,
                                                    max    : item["最大攻撃力"] as! Double),
                      blast                : item["発射数"] as! Int,
                      through              : item["貫通"] as! Double,
                      range                : item["射程"] as! Double,
                      firstAccuracy        : makeShoot(item, label: "初弾精度"),
                      aimFirstAccuracy     : makeShoot(item, label: "AIM初弾精度"),
                      rapidFireAccuracy    : makeShoot(item, label: "連射精度"),
                      aimRapidFireAccuracy : makeShoot(item, label: "AIM連射精度"),
                      recoilSuppression    : makeShoot(item, label: "反動抑制"),
                      aimRecoilSuppression : makeShoot(item, label: "AIM反動抑制"),
                      rapidFireAbility     : item["連射"] as! Double,
                      bullets              : item["弾数"] as! Int,
                      quickness            : item["機動"] as! Double,
                      recoverySpeed        : item["スプレッド回復速度"] as! Double,
                      mountSpeed           : item["装着時間"] as! Double)
    }
    
    private func makeShoot(item: [String: AnyObject], label: String) -> Shoot {
        return Shoot(stop : item[label + "_静射"] as! Double,
                     squat: item[label + "_蹲射"] as! Double,
                     walk : item[label + "_動射"] as! Double,
                     jump : item[label + "_飛射"] as! Double)
    }
}
