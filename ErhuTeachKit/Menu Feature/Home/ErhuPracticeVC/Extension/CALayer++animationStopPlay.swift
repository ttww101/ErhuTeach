//
//  CALayer++animationStopPlay.swift
//  ErhuTeach
//
//  Created by Apple on 5/13/19.
//  Copyright © 2019 whitelok.com. All rights reserved.
//

import UIKit

extension CALayer {
    ///暂停动画
    func pauseAnimation() {
        //取出当前时间,转成动画暂停的时间
        let pausedTime = self.convertTime(CACurrentMediaTime(), from: nil)
        //设置动画运行速度为0
        self.speed = 0.0;
        //设置动画的时间偏移量，指定时间偏移量的目的是让动画定格在该时间点的位置
        self.timeOffset = pausedTime
    }
    ///恢复动画
    func resumeAnimation() {
        //获取暂停的时间差
        let pausedTime = self.timeOffset
        self.speed = 1.0
        self.timeOffset = 0.0
        self.beginTime = 0.0
        //用现在的时间减去时间差,就是之前暂停的时间,从之前暂停的时间开始动画
        let timeSincePause = self.convertTime(CACurrentMediaTime(), from: nil) - pausedTime
        self.beginTime = timeSincePause
    }
}
