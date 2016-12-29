//
//  ViewController.swift
//  Guns
//
//  Created by Ichimots on 2016/05/06.
//  Copyright © 2016年 Ichimots. All rights reserved.
//

import UIKit

internal final class ViewController: UIViewController {

    @IBOutlet fileprivate weak var tableView: UITableView!
    
    var kindsOfWeapon = WeaponType.pointMan
    
    fileprivate var weapons = [Weapon]()
    fileprivate var selectedWeapon: Weapon?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        WeaponManager.sharedManager.getWeapon(kindsOfWeapon) { weapons in
            DispatchQueue.main.async {
                self.weapons = weapons
                self.tableView.reloadData()
            }
        }
        
        let title: String
        switch kindsOfWeapon {
        case .pointMan:
            title = "PointMan"
        case .rifleMan:
            title = "RifleMan"
        case .sniperRifle:
            title = "SniperRifle"
        }
        navigationItem.title = title
        
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    override func viewWillAppear(_ animated: Bool) {
        if let indexPathForSelectedRow = tableView.indexPathForSelectedRow {
            tableView.deselectRow(at: indexPathForSelectedRow, animated: true)
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}

extension ViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        selectedWeapon = weapons[(indexPath as NSIndexPath).row]
        performSegue(withIdentifier: "pushGunDetail", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let view = segue.destination as? GunDetailViewController
            , segue.identifier == "pushGunDetail" {
                view.weapon = selectedWeapon
        }
    }
}

extension ViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return weapons.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "weaponCell", for: indexPath)
        
        cell.textLabel?.text = weapons[(indexPath as NSIndexPath).row].name
        return cell
    }
}

