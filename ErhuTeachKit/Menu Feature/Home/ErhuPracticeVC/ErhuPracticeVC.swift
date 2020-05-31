//
//  ErhuPracticeVC.swift
//  ErhuTeach
//
//  Created by Apple on 5/10/19.
//  Copyright © 2019 whitelok.com. All rights reserved.
//

import UIKit
import AVFoundation

struct ErPModel {
    var name: String
    var length: Int
    var play: Bool
    var music: AVAudioPlayer?
    init(name: String, length: Int, play: Bool, playName: String, playType: String) {
        self.name = name
        self.length = length
        self.play = play
        do {
            let filePath = Bundle.main.url(forResource: playName, withExtension: playType)
            self.music = try AVAudioPlayer(contentsOf: filePath!, fileTypeHint: AVFileType.wav.rawValue)
        } catch {
            print("error")
        }
    }
}
class ErhuPracticeModel {
    func getPracticeData() -> [ErPModel] {
        var data = [ErPModel]()
        data.append(ErPModel(name: "闲居吟", length: 589, play: false, playName: "闲居吟", playType: "mp3"))
        data.append(ErPModel(name: "山村变了样", length: 356, play: false, playName: "山村变了样", playType: "mp3"))
        data.append(ErPModel(name: "悲歌", length: 182, play: false, playName: "悲歌", playType: "mp3"))
        data.append(ErPModel(name: "苦闷之讴", length: 229, play: false, playName: "苦闷之讴", playType: "mp3"))
        data.append(ErPModel(name: "江河水", length: 432, play: false, playName: "江河水", playType: "mp3"))
        return data
    }
}

class ErhuPracticeVC: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var myImg: UIImageView!
    @IBOutlet weak var myTable: UITableView!
    
    var listData: [ErPModel]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let nib = UINib(nibName: "ErhuPracticeCell", bundle: nil)
        myTable.register(nib, forCellReuseIdentifier: "ErhuPracticeCell")
        
        listData = ErhuPracticeModel().getPracticeData()
        
        // Do any additional setup after loading the view.
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return listData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellData = listData[indexPath.row]
        let cell = myTable.dequeueReusableCell(withIdentifier: "ErhuPracticeCell", for: indexPath) as! ErhuPracticeCell
        cell.title.text = cellData.name
        cell.time = cellData.length
        cell.playGo = {
            cellData.music?.play()
        }
        cell.playStop = {
            cellData.music?.pause()
        }
        
        return cell
    }

}
