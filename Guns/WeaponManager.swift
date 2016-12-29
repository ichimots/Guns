//
//  WeaponManager.swift
//  Guns
//
//  Created by Ichimots on 2016/07/03.
//  Copyright © 2016年 Ichimots. All rights reserved.
//

import Foundation
import SwiftyJSON

enum WeaponType: String {
    case pointMan    = "PM"
    case rifleMan    = "RM"
    case sniperRifle = "SR"
}

internal final class WeaponManager {
    
    static var sharedManager = WeaponManager()
    
    private var weapons: [Weapon]?
    
    func getWeapon(_ type: WeaponType, completion: @escaping ([Weapon]) -> Void) {
        
        guard let weapons = weapons else {
            
            getJson { json in
                let weaponsData = json["data"].arrayValue
                self.weapons = weaponsData.map { self.weaponMapping(from: $0) }
                completion(self.weapons!.filter { $0.branch == type.rawValue })
            }
            return
        }
        
        let weapon = weapons.filter { $0.branch == type.rawValue }
        completion(weapon)
    }
    
    private func weaponMapping(from json: JSON) -> Weapon {
        
        return Weapon(branch               : json["branch"].stringValue,
                      name                 : json["name"].stringValue,
                      damage               : Damage(average: json["damageAverage"].doubleValue,
                                                    min    : json["minDamage"].doubleValue,
                                                    max    : json["maxDamage"].doubleValue),
                      blast                : json["blast"].intValue,
                      through              : json["through"].doubleValue,
                      range                : json["range"].doubleValue,
                      firstAccuracy        : getShoot(at: "FirstAccuracy", with: json),
                      aimFirstAccuracy     : getShoot(at: "AimFirstAccuracy", with: json),
                      rapidFireAccuracy    : getShoot(at: "RapidFireAccuracy", with: json),
                      aimRapidFireAccuracy : getShoot(at: "AimRapidFireAccuracy", with: json),
                      recoilSuppression    : getShoot(at: "RecoilSuppression", with: json),
                      aimRecoilSuppression : getShoot(at: "AimRecoilSuppression", with: json),
                      rapidFireAbility     : json["rapidFireAbility"].doubleValue,
                      bullets              : json["bullets"].intValue,
                      quickness            : json["quickness"].doubleValue,
                      recoverySpeed        : json["recoverySpeed"].doubleValue,
                      mountSpeed           : json["mountSpeed"].doubleValue)
    }
    
    private func getShoot(at key: String, with json: JSON) -> Shoot {
        
        return Shoot(stop : json["stop" + key].doubleValue,
                     squat: json["squat" + key].doubleValue,
                     walk : json["walk" + key].doubleValue,
                     jump : json["jump" + key].doubleValue)
    }
    
    
    private func getJson(completion: @escaping (JSON) -> Void) {
        let url = URL(string: "https://raw.githubusercontent.com/ichimots/Guns/master/Guns/AVAGuns.json")!
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            guard let data = data else {
                return
            }
            
            let json = JSON(data)
            
            completion(json)
            }.resume()
    }
}


