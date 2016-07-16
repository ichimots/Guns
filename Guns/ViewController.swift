//
//  ViewController.swift
//  Guns
//
//  Created by Ichimots on 2016/05/06.
//  Copyright © 2016年 Ichimots. All rights reserved.
//

import UIKit

internal final class ViewController: UIViewController {

    @IBOutlet private weak var tableView: UITableView!
    
    var kindsOfWeapon = WeaponType.PointMan
    
    private var weapons = [Weapon]()
    private var selectedWeapon: Weapon?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        weapons = WeaponManager().getWeapon(kindsOfWeapon)
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    override func viewWillAppear(animated: Bool) {
        if let indexPathForSelectedRow = tableView.indexPathForSelectedRow {
            tableView.deselectRowAtIndexPath(indexPathForSelectedRow, animated: true)
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}

extension ViewController: UITableViewDelegate {
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        selectedWeapon = weapons[indexPath.row]
        performSegueWithIdentifier("pushGunDetail", sender: nil)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if let view = segue.destinationViewController as? GunDetailViewController
            where segue.identifier == "pushGunDetail" {
                view.weapon = selectedWeapon
        }
    }
}

extension ViewController: UITableViewDataSource {
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return weapons.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("weaponCell", forIndexPath: indexPath)
        
        cell.textLabel?.text = weapons[indexPath.row].name
        return cell
    }
}

