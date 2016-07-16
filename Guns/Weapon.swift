//
//  Weapon.swift
//  Guns
//
//  Created by Ichimots on 2016/07/03.
//  Copyright © 2016年 Ichimots. All rights reserved.
//

import Foundation

/// 攻撃力
internal struct Damage {
    /// 平均攻撃力
    let average: Double
    
    /// 最小攻撃力
    let min: Double
    
    /// 最大攻撃力
    let max: Double
}

/// 
internal struct Shoot {
    /// 止まり撃ち
    let stop: Double
    
    /// しゃがみ撃ち
    let squat: Double
    
    /// 歩き撃ち
    let walk: Double
    
    /// ジャンプ撃ち
    let jump: Double
}

/// 武器
internal struct Weapon {
    /// 武器名
    let name: String
    
    /// 攻撃力
    let damage: Damage
    
    /// 発射数
    let blast: Int
    
    /// 貫通
    let through: Double
    
    /// 射程
    let range: Double
    
    /// 初弾精度
    let firstAccuracy: Shoot
    
    /// AIM初弾精度
    let aimFirstAccuracy: Shoot
    
    /// 連射精度
    let rapidFireAccuracy: Shoot
    
    /// AIM連射精度
    let aimRapidFireAccuracy: Shoot
    
    /// 反動抑制
    let recoilSuppression: Shoot
    
    /// AIM反動抑制
    let aimRecoilSuppression: Shoot
    
    /// 連射
    let rapidFireAbility: Double
    
    /// 弾数
    let bullets: Int
    
    /// 機動
    let quickness: Double
    
    /// スプレッド回復速度
    let recoverySpeed: Double
    
    /// 装着速度
    let mountSpeed: Double
}
