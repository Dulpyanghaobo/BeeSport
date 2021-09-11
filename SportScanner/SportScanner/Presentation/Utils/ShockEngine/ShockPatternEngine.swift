//
//  ShockPatternEngine.swift
//  HealthFoodScanner
//
//  Created by 杨皓博 on 2021/9/7.
//  Copyright © 2021 IntSig Information Co., Ltd. All rights reserved.
//

import Foundation

/// 自定义震动模式


class ShockPatternEngine {
//    力度
    private enum PatternChar: Character {
        case space = "-"
        case signalHeavy = "O"
        case signalMedium = "o"
        case signalLight = "."
    }
    
    var isFinished: Bool {
        return queue.operationCount == 0
    }
    var pattern: ShockPattern!

    lazy var queue: OperationQueue = {
        var queue = OperationQueue()
        queue.maxConcurrentOperationCount = 1
        return queue
    }()
    
    /// 重反馈Engine
    private var engine: ShockFeedbackNotificationEngine?
    
    private var pauseDuration: TimeInterval
    
    init(hapticEngine: ShockFeedbackNotificationEngine?, pauseDuration: TimeInterval = 0.11) {
        self.engine = hapticEngine
        self.pauseDuration = pauseDuration
    }
    
    func generate() {
        for (_, character) in pattern.pattern.enumerated() {
            if character == PatternChar.space.rawValue {
                queue.addOperation(PauseOperation(delay: pattern.delay))
            } else if character == PatternChar.signalHeavy.rawValue {
                queue.addOperation(SignalOperation(hapticEngine: engine, impact: .heavy, pauseDuration: pauseDuration))
            } else if character == PatternChar.signalMedium.rawValue {
                queue.addOperation(SignalOperation(hapticEngine: engine, impact: .medium, pauseDuration: pauseDuration))
            } else if character == PatternChar.signalLight.rawValue {
                queue.addOperation(SignalOperation(hapticEngine: engine, impact: .light, pauseDuration: pauseDuration))
            }
        }
    }
}

class PauseOperation: Operation {
    private var delay: Double
    
    init(delay: Double) {
        self.delay = delay
    }
    
    override func main() {
        Thread.sleep(forTimeInterval: delay)
    }
}

class SignalOperation: Operation {
    weak var engine: ShockFeedbackNotificationEngine?
    private var impact: ShockImpact
    private var pauseDuration: TimeInterval
    
    init(hapticEngine: ShockFeedbackNotificationEngine?, impact: ShockImpact, pauseDuration: TimeInterval) {
        self.engine = hapticEngine
        self.impact = impact
        self.pauseDuration = pauseDuration
    }
    
    override func main() {
        guard #available(iOS 10, *) else { return }
        DispatchQueue.main.async {
            self.engine?.generate(self.impact)
        }
        Thread.sleep(forTimeInterval: pauseDuration)
    }
}
