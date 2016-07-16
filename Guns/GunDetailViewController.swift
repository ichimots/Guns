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
    
    @IBOutlet private weak var averageDamageLabel: UILabel!
    
    @IBOutlet private weak var minDamageLabel: UILabel!
    
    @IBOutlet private weak var maxDamageLabel: UILabel!
    
    @IBOutlet private weak var blastLabel: UILabel!
    
    @IBOutlet private weak var throughLabel: UILabel!
    
    @IBOutlet private weak var rangeLabel: UILabel!
    
    @IBOutlet private weak var firstAccuracyStopLabel: UILabel!
    
    @IBOutlet private weak var firstAccuracySquatLabel: UILabel!
    
    @IBOutlet private weak var firstAccuracyWalkLabel: UILabel!
    
    @IBOutlet private weak var firstAccuracyJumpLabel: UILabel!
    
    @IBOutlet private weak var aimFirstAccuracyStopLabel: UILabel!
    
    @IBOutlet private weak var aimFirstAccuracySquatLabel: UILabel!
    
    @IBOutlet private weak var aimFirstAccuracyWalkLabel: UILabel!
    
    @IBOutlet private weak var aimFirstAccuracyJumpLabel: UILabel!
    
    @IBOutlet private weak var rapidFireAccuracyStopLabel: UILabel!
    
    @IBOutlet private weak var rapidFireAccuracySquatLabel: UILabel!
    
    @IBOutlet private weak var rapidFireAccuracyWalkLabel: UILabel!
    
    @IBOutlet private weak var rapidFireAccuracyJumpLabel: UILabel!
    
    @IBOutlet private weak var aimRapidFireAccuracyStopLabel: UILabel!
    
    @IBOutlet private weak var aimRapidFireAccuracySquatLabel: UILabel!
    
    @IBOutlet private weak var aimRapidFireAccuracyWalkLabel: UILabel!
    
    @IBOutlet private weak var aimRapidFireAccuracyJumpLabel: UILabel!
    
    @IBOutlet private weak var recoilSuppressionStopLabel: UILabel!
    
    @IBOutlet private weak var recoilSuppressionSquatLabel: UILabel!
    
    @IBOutlet private weak var recoilSuppressionWalkLabel: UILabel!
    
    @IBOutlet private weak var recoilSuppressionJumpLabel: UILabel!
    
    @IBOutlet private weak var aimRecoilSuppressionStopLabel: UILabel!
    
    @IBOutlet private weak var aimRecoilSuppressionSquatLabel: UILabel!
    
    @IBOutlet private weak var aimRecoilSuppressionWalkLabel: UILabel!
    
    @IBOutlet private weak var aimRecoilSuppressionJumpLabel: UILabel!
    
    @IBOutlet private weak var rapidFireAbilityLabel: UILabel!
    
    @IBOutlet private weak var bulletsLabel: UILabel!
    
    @IBOutlet private weak var quicknessLabel: UILabel!
    
    @IBOutlet private weak var recoverySpeedLabel: UILabel!
    
    @IBOutlet private weak var mountSpeedLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    private func setup() {
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
