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

internal final class WeaponManager {
    
    static var sharedManager = WeaponManager()
    
    private var weapons: [Weapon]?
    
    func getWeapon(type: WeaponType) -> [Weapon] {
        
        if weapons == nil {
            weapons = [Weapon]()
            
            let path = NSBundle.mainBundle().pathForResource("AVA銃器スペック", ofType: "plist")
            let weaponObjects = NSArray(contentsOfFile: path!) as! [[String: AnyObject]]
            weaponObjects.forEach{
                weapons?.append(weaponMapping($0))
            }
        }
        
        return weapons?.filter { $0.branch == type.rawValue } ?? [Weapon]()
    }
    
    private func weaponMapping(item: [String: AnyObject]) -> Weapon {
        
        return Weapon(branch               : item["兵科"] as? String ?? "",
                      name                 : item["武器名"] as? String ?? "",
                      damage               : Damage(average: item["平均攻撃力"] as? Double ?? 0,
                                                    min    : item["最小攻撃力"] as? Double ?? 0,
                                                    max    : item["最大攻撃力"] as? Double ?? 0),
                      blast                : item["発射数"] as? Int ?? 0,
                      through              : item["貫通"] as? Double ?? 0,
                      range                : item["射程"] as? Double ?? 0,
                      firstAccuracy        : makeShoot(item, label: "初弾精度"),
                      aimFirstAccuracy     : makeShoot(item, label: "AIM初弾精度"),
                      rapidFireAccuracy    : makeShoot(item, label: "連射精度"),
                      aimRapidFireAccuracy : makeShoot(item, label: "AIM連射精度"),
                      recoilSuppression    : makeShoot(item, label: "反動抑制"),
                      aimRecoilSuppression : makeShoot(item, label: "AIM反動抑制"),
                      rapidFireAbility     : item["連射"] as? Double ?? 0,
                      bullets              : item["弾数"] as? Int ?? 0,
                      quickness            : item["機動"] as? Double ?? 0,
                      recoverySpeed        : item["スプレッド回復速度"] as? Double ?? 0,
                      mountSpeed           : item["装着時間"] as? Double ?? 0)
    }
    
    private func makeShoot(item: [String: AnyObject], label: String) -> Shoot {
        return Shoot(stop : item[label + "_静射"] as? Double ?? 0,
                     squat: item[label + "_蹲射"] as? Double ?? 0,
                     walk : item[label + "_動射"] as? Double ?? 0,
                     jump : item[label + "_飛射"] as? Double ?? 0)
    }
}
