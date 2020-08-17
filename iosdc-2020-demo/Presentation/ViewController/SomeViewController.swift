//
//  SomeViewController.swift
//  iosdc-2020-demo
//
//  Created by Shunsuke Sato on 2020/08/16.
//  Copyright © 2020 Shunsuke Sato. All rights reserved.
//

import Foundation
import UIKit

class SomeViewController: UIViewController, SomeView {

    var presenter: SomePresenter!

    static func instantiate() -> SomeViewController {
        let sb = UIStoryboard(name: "SomeViewController", bundle: nil)
        return sb.instantiateInitialViewController()!
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        presenter.viewDidLoad()
    }

    func fetched(someEntities: [SomeEntity]) {
        // ここで本来は取得したエンティティの表示処理を書く
    }
}
