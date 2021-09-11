//
//  HFSNiblessView.swift
//  HealthFoodScanner
//
//  Created by 杨皓博 on 2021/9/6.
//  Copyright © 2021 IntSig Information Co., Ltd. All rights reserved.
//

import UIKit

open class HFSNiblessView: UIView {

    // MARK: - Methods
    public override init(frame: CGRect) {
      super.init(frame: frame)
    }

    @available(*, unavailable,
      message: "Loading this view from a nib is unsupported in favor of initializer dependency injection."
    )
    public required init?(coder aDecoder: NSCoder) {
      fatalError("Loading this view from a nib is unsupported in favor of initializer dependency injection.")
    }

}
