//
//  CustomViewBlur.swift
//  HealthFoodScanner
//
//  Created by 杨皓博 on 2021/9/9.
//  Copyright © 2021 IntSig Information Co., Ltd. All rights reserved.
//

import UIKit
typealias  ImageCompletion  = (UIImage?) -> Void

/**
 Class BlurView:
 This class adds a blur layer on top of its contents to blur iteslf and it's subviews by a variable amount.
 It is similar to the blur effect created by a UIVisualEffectView, but it provides a variable blur amount. It also blurs the view and it's subviews rather than blurring the content that appears under it.

        properties:
            - updateBlurImage: An optional completion handler which is invoked when blurring is complete.
            - blur: Bool. Set to true to show the blur layer, false to disable blurring.
            - updateBlurImage: An optional completion handler that gets called when an updated blur image is generated.
            - blurLevel: CGFloat: The blur radius to apply. 0 = no blur. Default value = 10
 */
class BlurView: UIView {

    //MARK: Set this completion handler to receive updated blur images if desired
    public var updateBlurImage: ImageCompletion? = nil


   //MARK: Set blur = true to add a blur layer, blur = false to disable view blurring
   public var blur: Bool = true {
        didSet {
            blurLayer.isHidden = !blur
            applyBlur()
        }
    }

    /**This controls the blur radius for the blur. 0 = no blur. Larger values = more blur. Default = 10
 */
    public var blurLevel: CGFloat = 10 {
        didSet {
            applyBlur()
        }
    }

    public var brightnestAdjustment: CGFloat = 0 {
        didSet {
            applyBlur()
        }
    }

    private lazy var blurLayer: CALayer = {
        let newLayer = CALayer()
        newLayer.isOpaque = true
        self.clipsToBounds = true
        self.layer.addSublayer(newLayer)
        return newLayer
    }()

    override func awakeFromNib() {
    }


    override var bounds: CGRect {
        didSet {
            blurLayer.frame = self.bounds
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.2){
                self.applyBlur()
            }
        }
    }

    public func applyBlur() {
        let context = CIContext(options: nil)

        self.makeBlurredImage(with: blurLevel, context: context, completed: { processedImage in
            self.blurLayer.contents = nil
            self.blurLayer.contents = processedImage?.cgImage
            self.updateBlurImage?(processedImage)
        })
    }

/**
     Creates a blurred image from the contents of the view's layer hierarchy, and  invokes a completion handler when the blur is complete.
     - parameters:
        - level: The blur radius to apply. Set to true to show the blur layer, false to disable blurring.
        - context: The CIContext in which to do the rendering
        - completed: a completion handler to invoke with the blurred image

     */
    private func makeBlurredImage(with level: CGFloat, context: CIContext, completed: @escaping (UIImage?) -> Void) {
        // screen shot
        layer.isOpaque = true
        blurLayer.isHidden = true
        UIGraphicsBeginImageContextWithOptions(self.frame.size, false, 1)
        self.layer.render(in: UIGraphicsGetCurrentContext()!)
        let resultImage = UIGraphicsGetImageFromCurrentImageContext()!
        UIGraphicsEndImageContext()
        blurLayer.isHidden = !blur
        let beginImage = CIImage(image: resultImage)

        guard level != 0  && blur else {
            completed(resultImage)
            return
        }


        //Clamp the image
        guard let clampFilter = CIFilter(name: "CIAffineClamp"),
            let brightnessFilter = CIFilter(name: "CIExposureAdjust"),
            let blurFilter = CIFilter(name: "CIGaussianBlur"),
            let cropFilter = CIFilter(name: "CICrop")
            else {
                fatalError()
        }
        clampFilter.setValue(beginImage, forKey: kCIInputImageKey)
        clampFilter.setValue(CGAffineTransform.identity, forKey: kCIInputTransformKey)
        var output = clampFilter.outputImage

        blurFilter.setValue(level, forKey: kCIInputRadiusKey)
        blurFilter.setValue(output, forKey: kCIInputImageKey)
        output = blurFilter.outputImage

        if brightnestAdjustment != 0 {
            brightnessFilter.setValue(output, forKey: kCIInputImageKey)
            brightnessFilter.setValue(brightnestAdjustment, forKey:  kCIInputEVKey)
            output = brightnessFilter.outputImage
        }


        cropFilter.setValue(output, forKey: kCIInputImageKey)
        cropFilter.setValue(CIVector(cgRect: beginImage!.extent), forKey: "inputRectangle")

        output = cropFilter.outputImage
        var cgimg: CGImage?
        var extent: CGRect?

        let global = DispatchQueue.global(qos: .userInteractive)

        global.async {
            extent = output!.extent
            cgimg = context.createCGImage(output!, from: extent!)!
            let processedImage = UIImage(cgImage: cgimg!)

            DispatchQueue.main.async {
                completed(processedImage)
            }
        }
    }
}

