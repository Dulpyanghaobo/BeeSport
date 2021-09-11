//
//  Shock.swift
//  HealthFoodScanner
//
//  Created by 杨皓博 on 2021/9/7.
//  Copyright © 2021 IntSig Information Co., Ltd. All rights reserved.
//

import UIKit

enum ShockError: Error {
    case notSupportedByOS
    case notSupportedByDevice
    case notSupported
}

@objc public enum ShockNotification : Int {
    case success
    case warning
    case error
}

@objc public enum ShockImpact : Int {
    case light
    case medium
    case heavy
}

public protocol ShockEngine {
    var logEnabled: Bool! { get set }
    func prepare() throws
    func generate(_ notification: ShockNotification)
}

@objc public final class Shock: NSObject {
    private static var sharedShock: Shock = {
        let shock = Shock()
        return shock
    }()
    
    private var engine: ShockEngine? {
        let currentDevice = UIDevice.current
        var engine: ShockEngine?
        
        if currentDevice.hasShockFeedback {
            engine = ShockFeedbackNotificationEngine()
        } else if currentDevice.hasTapticEngine {
            engine = TapticEngine()
        } else {
            engine = nil
        }
        
        engine?.logEnabled = logEnabled
        return engine
    }
    
    private var patternEngine: ShockPatternEngine?
    
    public var logEnabled: Bool = true
    
    @objc public class func shared() -> Shock {
        return sharedShock
    }
    
    public func prepare() throws {
        guard let engine = engine else {
            if logEnabled {
                print("Haptico 📳: Device name - \(UIDevice.current.deviceType.displayName)")
            }
            throw ShockError.notSupported
        }
        try engine.prepare()
    }
    
    @objc public func generate(feedbackNotification: ShockNotification) {
        engine?.generate(feedbackNotification)
    }
    
   @objc public func generate(impact: ShockImpact) {
        guard let engine = self.engine as? ShockFeedbackNotificationEngine else { return }
        engine.generate(impact)
    }
    
    @objc public func generateFeedbackFromPattern(_ pattern: String, delay: Double) {
        guard let engine = self.engine as? ShockFeedbackNotificationEngine else { return }
        
        if patternEngine == nil {
            patternEngine = ShockPatternEngine(hapticEngine: engine)
        }
        
        guard let patternEngine = self.patternEngine, patternEngine.isFinished else { return }
        
        let pattern = ShockPattern(pattern: pattern, delay: delay)
        patternEngine.pattern = pattern
        patternEngine.generate()
    }
}
