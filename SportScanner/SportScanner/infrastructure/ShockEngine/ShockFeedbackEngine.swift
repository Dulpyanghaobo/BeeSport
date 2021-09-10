//
//  ShockFeedbackEngine.swift
//  HealthFoodScanner
//
//  Created by 杨皓博 on 2021/9/7.
//  Copyright © 2021 IntSig Information Co., Ltd. All rights reserved.
//

import UIKit

final class ShockFeedbackNotificationEngine: ShockEngine {
    var logEnabled: Bool!
    
    @available(iOS 10.0, *)
    private var generator: UINotificationFeedbackGenerator {
        return UINotificationFeedbackGenerator()
    }
    
    @available(iOS 10.0, *)
    private var impactGenerator: (light: UIImpactFeedbackGenerator, medium: UIImpactFeedbackGenerator, heavy: UIImpactFeedbackGenerator) {
        return (light: UIImpactFeedbackGenerator(style: .light), medium: UIImpactFeedbackGenerator(style: .medium), heavy: UIImpactFeedbackGenerator(style: .heavy))
    }

    func prepare() throws {
        guard #available(iOS 10, *) else { throw ShockError.notSupportedByOS }
        guard UIDevice.current.hasShockFeedback else { throw ShockError.notSupportedByDevice }
        
        generator.prepare()
        impactGenerator.heavy.prepare()
        impactGenerator.medium.prepare()
        impactGenerator.light.prepare()
    }
    
    func generate(_ notification: ShockNotification) {
        guard #available(iOS 10, *) else { return }
        guard UIDevice.current.hasShockFeedback else { return }
        
        switch notification {
        case .success:
            generator.notificationOccurred(.success)
        case .warning:
            generator.notificationOccurred(.warning)
        case .error:
            generator.notificationOccurred(.error)
        }
    }
    
    func generate(_ impact: ShockImpact) {
        guard #available(iOS 10, *) else { return }
        guard UIDevice.current.hasShockFeedback else { return }
        
        switch impact {
        case .light:
            impactGenerator.light.impactOccurred()
        case .medium:
            impactGenerator.medium.impactOccurred()
        case .heavy:
            impactGenerator.heavy.impactOccurred()
        }
    }
}
