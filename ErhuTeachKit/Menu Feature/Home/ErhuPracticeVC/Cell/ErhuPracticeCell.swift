//
//  ErhuPracticeCell.swift
//  ErhuTeach
//
//  Created by Apple on 5/10/19.
//  Copyright © 2019 whitelok.com. All rights reserved.
//

import UIKit

class ErhuPracticeCell: UITableViewCell {
    @IBOutlet weak var title: UILabel!
    @IBOutlet weak var playControl: UIButton!
    @IBOutlet weak var processView: UIView!
    
    var time: Int = 0
    var beginWidth: CGFloat = 0
    var play = false
    var setAnimation = false
    var playStop: (() -> Void)?
    var playGo: (() -> Void)?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func playAction() {
        CATransaction.begin()
        let playAnimation = CABasicAnimation(keyPath: "bounds.size.width")
        playAnimation.fromValue = beginWidth
        playAnimation.toValue = self.frame.width * 2
        playAnimation.duration = CFTimeInterval(time)
        playAnimation.fillMode = .forwards
        playAnimation.isRemovedOnCompletion = true
        CATransaction.setCompletionBlock{ [weak self] in
            self?.playCompletion()
        }
        processView.layer.add(playAnimation, forKey: "runActionPlay")
        CATransaction.commit()
    }
    
    func playCompletion() {
        setAnimation = false
        playControl.setBackgroundImage(UIImage(named: "play.png"), for: .normal)
    }
    
    @IBAction func playClick(_ sender: UIButton) {
        play = !play
        if play {
            playControl.setBackgroundImage(UIImage(named: "stop.png"), for: .normal)
            if setAnimation { processView.layer.resumeAnimation() }
            else { playAction(); setAnimation = true }
            playGo?()
        } else {
            playControl.setBackgroundImage(UIImage(named: "play.png"), for: .normal)
            processView.layer.pauseAnimation()
            playStop?()
        }
    }
    
    
}
