//
//  ViewControllerFactory.swift
//  iosdc-2020-demo
//
//  Created by Shunsuke Sato on 2020/08/17.
//  Copyright © 2020 Shunsuke Sato. All rights reserved.
//

import Foundation

struct ViewControllerFactory {

    static func create() -> SomeViewController {
        let vc = SomeViewController.instantiate()
        let presenter = SomePresenterImpl(
            view: vc,
            repository: RepositoryFactory.create()
        )
        vc.presenter = presenter
        return vc
    }
}
