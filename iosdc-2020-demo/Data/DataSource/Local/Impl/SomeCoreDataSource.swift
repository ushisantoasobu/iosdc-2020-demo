//
//  SomeCoreDataSource.swift
//  iosdc-2020-demo
//
//  Created by Shunsuke Sato on 2020/08/17.
//  Copyright © 2020 Shunsuke Sato. All rights reserved.
//

import Foundation

struct SomeCoreDataSource: SomeLocalDataSource {

    func fetch() -> [SomeEntity] {
        // ここで本来はCoreDataを用いた実装を書く
        return []
    }
}
