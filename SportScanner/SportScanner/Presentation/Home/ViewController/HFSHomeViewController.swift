//
//  HFSHomeViewController.swift
//  SportScanner
//
//  Created by 杨皓博 on 2021/9/11.
//

import UIKit

class HFSHomeViewController: UIViewController,StoryboardInstantiable {

    private var viewModel: HFSHomeViewModel!

    override func viewDidLoad() {
        super.viewDidLoad()
        viewModel.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    static func create(with viewModel : HFSHomeViewModel) -> HFSHomeViewController {
        let view = HFSHomeViewController.instantiateViewController()
        view.viewModel = viewModel
        return view
    }

}
