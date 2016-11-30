//
//  GunDetailViewController.swift
//  Guns
//
//  Created by Ichimots on 2016/07/06.
//  Copyright © 2016年 Ichimots. All rights reserved.
//

import UIKit

internal final class GunDetailViewController: UIViewController {
    
    var weapon: Weapon?
    
    @IBOutlet fileprivate weak var averageDamageLabel: UILabel!
    
    @IBOutlet fileprivate weak var minDamageLabel: UILabel!
    
    @IBOutlet fileprivate weak var maxDamageLabel: UILabel!
    
    @IBOutlet fileprivate weak var blastLabel: UILabel!
    
    @IBOutlet fileprivate weak var throughLabel: UILabel!
    
    @IBOutlet fileprivate weak var rangeLabel: UILabel!
    
    @IBOutlet fileprivate weak var firstAccuracyStopLabel: UILabel!
    
    @IBOutlet fileprivate weak var firstAccuracySquatLabel: UILabel!
    
    @IBOutlet fileprivate weak var firstAccuracyWalkLabel: UILabel!
    
    @IBOutlet fileprivate weak var firstAccuracyJumpLabel: UILabel!
    
    @IBOutlet fileprivate weak var aimFirstAccuracyStopLabel: UILabel!
    
    @IBOutlet fileprivate weak var aimFirstAccuracySquatLabel: UILabel!
    
    @IBOutlet fileprivate weak var aimFirstAccuracyWalkLabel: UILabel!
    
    @IBOutlet fileprivate weak var aimFirstAccuracyJumpLabel: UILabel!
    
    @IBOutlet fileprivate weak var rapidFireAccuracyStopLabel: UILabel!
    
    @IBOutlet fileprivate weak var rapidFireAccuracySquatLabel: UILabel!
    
    @IBOutlet fileprivate weak var rapidFireAccuracyWalkLabel: UILabel!
    
    @IBOutlet fileprivate weak var rapidFireAccuracyJumpLabel: UILabel!
    
    @IBOutlet fileprivate weak var aimRapidFireAccuracyStopLabel: UILabel!
    
    @IBOutlet fileprivate weak var aimRapidFireAccuracySquatLabel: UILabel!
    
    @IBOutlet fileprivate weak var aimRapidFireAccuracyWalkLabel: UILabel!
    
    @IBOutlet fileprivate weak var aimRapidFireAccuracyJumpLabel: UILabel!
    
    @IBOutlet fileprivate weak var recoilSuppressionStopLabel: UILabel!
    
    @IBOutlet fileprivate weak var recoilSuppressionSquatLabel: UILabel!
    
    @IBOutlet fileprivate weak var recoilSuppressionWalkLabel: UILabel!
    
    @IBOutlet fileprivate weak var recoilSuppressionJumpLabel: UILabel!
    
    @IBOutlet fileprivate weak var aimRecoilSuppressionStopLabel: UILabel!
    
    @IBOutlet fileprivate weak var aimRecoilSuppressionSquatLabel: UILabel!
    
    @IBOutlet fileprivate weak var aimRecoilSuppressionWalkLabel: UILabel!
    
    @IBOutlet fileprivate weak var aimRecoilSuppressionJumpLabel: UILabel!
    
    @IBOutlet fileprivate weak var rapidFireAbilityLabel: UILabel!
    
    @IBOutlet fileprivate weak var bulletsLabel: UILabel!
    
    @IBOutlet fileprivate weak var quicknessLabel: UILabel!
    
    @IBOutlet fileprivate weak var recoverySpeedLabel: UILabel!
    
    @IBOutlet fileprivate weak var mountSpeedLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    fileprivate func setup() {
        guard let weapon = weapon else { return }
        
        navigationItem.title = weapon.name
        averageDamageLabel.text = "\(weapon.damage.average)"
        minDamageLabel.text = "\(weapon.damage.min)"
        maxDamageLabel.text = "\(weapon.damage.max)"
        blastLabel.text = "\(weapon.blast)"
        throughLabel.text = "\(weapon.through)"
        rangeLabel.text = "\(weapon.range)"
        firstAccuracyStopLabel.text = "\(weapon.firstAccuracy.stop)"
        firstAccuracySquatLabel.text = "\(weapon.firstAccuracy.squat)"
        firstAccuracyWalkLabel.text = "\(weapon.firstAccuracy.walk)"
        firstAccuracyJumpLabel.text = "\(weapon.firstAccuracy.jump)"
        aimFirstAccuracyStopLabel.text = "\(weapon.aimFirstAccuracy.stop)"
        aimFirstAccuracySquatLabel.text = "\(weapon.aimFirstAccuracy.squat)"
        aimFirstAccuracyWalkLabel.text = "\(weapon.aimFirstAccuracy.walk)"
        aimFirstAccuracyJumpLabel.text = "\(weapon.aimFirstAccuracy.jump)"
        rapidFireAccuracyStopLabel.text = "\(weapon.rapidFireAccuracy.stop)"
        rapidFireAccuracySquatLabel.text = "\(weapon.rapidFireAccuracy.squat)"
        rapidFireAccuracyWalkLabel.text = "\(weapon.rapidFireAccuracy.walk)"
        rapidFireAccuracyJumpLabel.text = "\(weapon.rapidFireAccuracy.jump)"
        aimRapidFireAccuracyStopLabel.text = "\(weapon.aimRapidFireAccuracy.stop)"
        aimRapidFireAccuracySquatLabel.text = "\(weapon.aimRapidFireAccuracy.squat)"
        aimRapidFireAccuracyWalkLabel.text = "\(weapon.aimRapidFireAccuracy.walk)"
        aimRapidFireAccuracyJumpLabel.text = "\(weapon.aimRapidFireAccuracy.jump)"
        recoilSuppressionStopLabel.text = "\(weapon.recoilSuppression.stop)"
        recoilSuppressionSquatLabel.text = "\(weapon.recoilSuppression.squat)"
        recoilSuppressionWalkLabel.text = "\(weapon.recoilSuppression.walk)"
        recoilSuppressionJumpLabel.text = "\(weapon.recoilSuppression.jump)"
        aimRecoilSuppressionStopLabel.text = "\(weapon.aimRecoilSuppression.stop)"
        aimRecoilSuppressionSquatLabel.text = "\(weapon.aimRecoilSuppression.squat)"
        aimRecoilSuppressionWalkLabel.text = "\(weapon.aimRecoilSuppression.walk)"
        aimRecoilSuppressionJumpLabel.text = "\(weapon.aimRecoilSuppression.jump)"
        rapidFireAbilityLabel.text = "\(weapon.rapidFireAbility)"
        bulletsLabel.text = "\(weapon.bullets)"
        quicknessLabel.text = "\(weapon.quickness)"
        recoverySpeedLabel.text = "\(weapon.recoverySpeed)"
        mountSpeedLabel.text = "\(weapon.mountSpeed)"
        
    }
}
