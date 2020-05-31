//
//  ErhuInfoVC.swift
//  iFitnessMan
//
//  Created by Apple on 4/15/19.
//  Copyright © 2019 whitelok.com. All rights reserved.
//

import UIKit

class ErhuInfoVC: UIViewController {

    @IBOutlet weak var point1: UILabel!
    @IBOutlet weak var value1: UILabel!
    @IBOutlet weak var point2: UILabel!
    @IBOutlet weak var value2: UILabel!
    @IBOutlet weak var point3: UILabel!
    @IBOutlet weak var value3: UILabel!
    @IBOutlet weak var point4: UILabel!
    @IBOutlet weak var value4: UILabel!
    @IBOutlet weak var point5: UILabel!
    @IBOutlet weak var value5: UILabel!
    @IBOutlet weak var point6: UILabel!
    @IBOutlet weak var value6: UILabel!
    @IBOutlet weak var point7: UILabel!
    @IBOutlet weak var value7: UILabel!
    @IBOutlet weak var point8: UILabel!
    @IBOutlet weak var value8: UILabel!
    @IBOutlet weak var point9: UILabel!
    @IBOutlet weak var value9: UILabel!
    @IBOutlet weak var point10: UILabel!
    @IBOutlet weak var value10: UILabel!
    @IBOutlet weak var point11: UILabel!
    @IBOutlet weak var value11: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setTapGestureRecognizer()
    }
    
    // MARK: - UITapGestureRecognizer
    func setTapGestureRecognizer() {
        point1.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(point1Tapped(tapGestureRecognizer:))))
        value1.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(value1Tapped(tapGestureRecognizer:))))
        point2.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(point2Tapped(tapGestureRecognizer:))))
        value2.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(value2Tapped(tapGestureRecognizer:))))
        point3.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(point3Tapped(tapGestureRecognizer:))))
        value3.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(value3Tapped(tapGestureRecognizer:))))
        point4.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(point4Tapped(tapGestureRecognizer:))))
        value4.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(value4Tapped(tapGestureRecognizer:))))
        point5.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(point5Tapped(tapGestureRecognizer:))))
        value5.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(value5Tapped(tapGestureRecognizer:))))
        point6.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(point6Tapped(tapGestureRecognizer:))))
        value6.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(value6Tapped(tapGestureRecognizer:))))
        point7.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(point7Tapped(tapGestureRecognizer:))))
        value7.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(value7Tapped(tapGestureRecognizer:))))
        point8.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(point8Tapped(tapGestureRecognizer:))))
        value8.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(value8Tapped(tapGestureRecognizer:))))
        point9.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(point9Tapped(tapGestureRecognizer:))))
        value9.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(value9Tapped(tapGestureRecognizer:))))
        point10.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(point10Tapped(tapGestureRecognizer:))))
        value10.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(value10Tapped(tapGestureRecognizer:))))
        point11.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(point11Tapped(tapGestureRecognizer:))))
        value11.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(value11Tapped(tapGestureRecognizer:))))
    }
    
    // MARK: - tap event
    @objc func point1Tapped(tapGestureRecognizer: UITapGestureRecognizer)
    {
        point1.isHidden = true
        value1.isHidden = false
    }
    @objc func value1Tapped(tapGestureRecognizer: UITapGestureRecognizer)
    {
        point1.isHidden = false
        value1.isHidden = true
    }
    @objc func point2Tapped(tapGestureRecognizer: UITapGestureRecognizer)
    {
        point2.isHidden = true
        value2.isHidden = false
    }
    @objc func value2Tapped(tapGestureRecognizer: UITapGestureRecognizer)
    {
        point2.isHidden = false
        value2.isHidden = true
    }
    @objc func point3Tapped(tapGestureRecognizer: UITapGestureRecognizer)
    {
        point3.isHidden = true
        value3.isHidden = false
    }
    @objc func value3Tapped(tapGestureRecognizer: UITapGestureRecognizer)
    {
        point3.isHidden = false
        value3.isHidden = true
    }
    @objc func point4Tapped(tapGestureRecognizer: UITapGestureRecognizer)
    {
        point4.isHidden = true
        value4.isHidden = false
    }
    @objc func value4Tapped(tapGestureRecognizer: UITapGestureRecognizer)
    {
        point4.isHidden = false
        value4.isHidden = true
    }
    @objc func point5Tapped(tapGestureRecognizer: UITapGestureRecognizer)
    {
        point5.isHidden = true
        value5.isHidden = false
    }
    @objc func value5Tapped(tapGestureRecognizer: UITapGestureRecognizer)
    {
        point5.isHidden = false
        value5.isHidden = true
    }
    @objc func point6Tapped(tapGestureRecognizer: UITapGestureRecognizer)
    {
        point6.isHidden = true
        value6.isHidden = false
    }
    @objc func value6Tapped(tapGestureRecognizer: UITapGestureRecognizer)
    {
        point6.isHidden = false
        value6.isHidden = true
    }
    @objc func point7Tapped(tapGestureRecognizer: UITapGestureRecognizer)
    {
        point7.isHidden = true
        value7.isHidden = false
    }
    @objc func value7Tapped(tapGestureRecognizer: UITapGestureRecognizer)
    {
        point7.isHidden = false
        value7.isHidden = true
    }
    @objc func point8Tapped(tapGestureRecognizer: UITapGestureRecognizer)
    {
        point8.isHidden = true
        value8.isHidden = false
    }
    @objc func value8Tapped(tapGestureRecognizer: UITapGestureRecognizer)
    {
        point8.isHidden = false
        value8.isHidden = true
    }
    @objc func point9Tapped(tapGestureRecognizer: UITapGestureRecognizer)
    {
        point9.isHidden = true
        value9.isHidden = false
    }
    @objc func value9Tapped(tapGestureRecognizer: UITapGestureRecognizer)
    {
        point9.isHidden = false
        value9.isHidden = true
    }
    @objc func point10Tapped(tapGestureRecognizer: UITapGestureRecognizer)
    {
        point10.isHidden = true
        value10.isHidden = false
    }
    @objc func value10Tapped(tapGestureRecognizer: UITapGestureRecognizer)
    {
        point10.isHidden = false
        value10.isHidden = true
    }
    @objc func point11Tapped(tapGestureRecognizer: UITapGestureRecognizer)
    {
        point11.isHidden = true
        value11.isHidden = false
    }
    @objc func value11Tapped(tapGestureRecognizer: UITapGestureRecognizer)
    {
        point11.isHidden = false
        value11.isHidden = true
    }
    @IBAction func changeView(_ sender: UIButton) {
        guard let delegate = UIApplication.shared.delegate, let window = delegate.window, let resideVC = window?.rootViewController as? RESideMenu else { return }
        guard let nav = resideVC.contentViewController as? UINavigationController else { return }
        
        nav.pushViewController(ErhuTeachVC(), animated: true)
    }
}
