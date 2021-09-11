//
//  TapticEngine.swift
//  HealthFoodScanner
//
//  Created by 杨皓博 on 2021/9/7.
//  Copyright © 2021 IntSig Information Co., Ltd. All rights reserved.
//

import UIKit
import AudioToolbox.AudioServices

final class TapticEngine: ShockEngine {
    struct SoundID {
        static let successID = SystemSoundID(1519)
        static let warningID = SystemSoundID(1102)
        static let errorID = SystemSoundID(1107)
    }
    
    var logEnabled: Bool!
    
    func prepare() throws {
        guard #available(iOS 9, *) else { throw ShockError.notSupportedByOS }
        guard UIDevice.current.hasTapticEngine else { throw ShockError.notSupportedByDevice }
    }
    
    func generate(_ notification: ShockNotification) {
        guard #available(iOS 9, *) else { return }
        guard UIDevice.current.hasTapticEngine else { return }
        
        switch notification {
        case .success:
            AudioServicesPlaySystemSoundWithCompletion(SoundID.successID, nil)
        case .warning:
            AudioServicesPlaySystemSoundWithCompletion(SoundID.warningID, nil)
        case .error:
            AudioServicesPlaySystemSoundWithCompletion(SoundID.errorID, nil)
        }
    }
}
