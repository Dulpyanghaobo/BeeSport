//
//  HFSCameraPresenter.swift
//  SportScanner
//
//  Created by 杨皓博 on 2021/10/20.
//

import Foundation
import AVFoundation

class HFSCameraPresenter : NSObject {
    
    /// 设置相机预览界面
    private lazy var capturePreviewLayer : AVCaptureVideoPreviewLayer = {
        var capturePreviewLayer = AVCaptureVideoPreviewLayer.init(session: session)
        if let connection = capturePreviewLayer.connection {
            if connection.isVideoOrientationSupported {
                connection.videoOrientation = AVCaptureVideoOrientation.portrait
            }
        }
        capturePreviewLayer.videoGravity = AVLayerVideoGravity.resizeAspectFill
        return capturePreviewLayer
    } ()
    
    /// 输出照片格式
    private let photoSettings : AVCapturePhotoSettings = {
        let settingDictionary = [AVVideoCodecKey : AVVideoCodecType.jpeg]
        let photoSettings = AVCapturePhotoSettings.init(format: settingDictionary)
        return photoSettings
    }()
    
    /// 输出
    private lazy var photoOutput : AVCapturePhotoOutput = {
        var photoOutput = AVCapturePhotoOutput.init()
        photoOutput.setPreparedPhotoSettingsArray([self.photoSettings], completionHandler: nil)
        return photoOutput
    } ()
    
    let faceOutPut : AVCaptureMetadataOutput = {
        let faceOutput = AVCaptureMetadataOutput.init()
        return faceOutput
    } ()
    
    private lazy var device : AVCaptureDevice = {
        let deviceSession = AVCaptureDevice.DiscoverySession.init(deviceTypes: [.builtInWideAngleCamera], mediaType: AVMediaType.video, position: AVCaptureDevice.Position.back)
        for device in deviceSession.devices {
            if([device.position].contains(AVCaptureDevice.Position.back)) {
                return device
            }
        }
        return deviceSession.devices[0]
    } ()
    
//    private lazy var deviceInput : AVCaptureDeviceInput {
//
//    } ()
    
    private lazy var session : AVCaptureSession = {
        var session = AVCaptureSession.init()
        session.canSetSessionPreset(AVCaptureSession.Preset.photo)
        return session
    } ()
}

/// 相机基本信息配置
extension HFSCameraPresenter
{
    func configCameraSetting() {
//        if self.session.inputs.contains(self.de)
    }
}


extension HFSCameraPresenter : AVCapturePhotoCaptureDelegate
{
    
}
