//
//  ErhuVideoVC.swift
//  iFitnessMan
//
//  Created by Apple on 4/16/19.
//  Copyright © 2019 whitelok.com. All rights reserved.
//

import UIKit

class ErhuVideoVC: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var videoTable: UITableView!
    var listData = [ErhuVideoMode]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        videoTable.register(UINib(nibName: "ErhuVideoCell", bundle: nil), forCellReuseIdentifier: "ErhuVideoCell")
        
        setData()
        videoTable.reloadData()
        // Do any additional setup after loading the view.
    }
    func setData() {
        for i in 0...ErhuVideoData.img.count - 1 {
            listData.append(ErhuVideoMode.init(img: ErhuVideoData.img[i], title: ErhuVideoData.title[i], link: ErhuVideoData.link[i]))
        }
    }
    
    // MARK: - UITableViewDataSource
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return listData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellData = listData[indexPath.row]
        let cell = videoTable.dequeueReusableCell(withIdentifier: "ErhuVideoCell", for: indexPath) as! ErhuVideoCell
        cell.videoImg.image = UIImage(named: cellData.img)
        cell.videoLabel.text = cellData.title
        cell.videoLabel.lineBreakMode = .byCharWrapping
        cell.videoLabel.numberOfLines = 0
        cell.videoLabel.adjustsFontSizeToFitWidth = true
        
        return cell
    }
    // MARK: - UITableViewDelegate
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        videoTable.deselectRow(at: indexPath, animated: true)
        let data = listData[indexPath.row]
        let urlString = data.link
        let url = URL(string: urlString)
        UIApplication.shared.openURL(url!)
    }
}
