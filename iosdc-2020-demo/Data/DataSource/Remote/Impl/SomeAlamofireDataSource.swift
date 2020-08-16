//
//  SomeAlamofireDataSource.swift
//  iosdc-2020-demo
//
//  Created by Shunsuke Sato on 2020/08/16.
//  Copyright © 2020 Shunsuke Sato. All rights reserved.
//

import Foundation

struct SomeAlamofireDataSource: SomeRemoteDataSource {

    func fetch() -> [SomeEntity] {
        // ここで本来はAlamofireを用いた実装を書く
        return []
    }

    func delete(id: Int) {
        // ここで本来はAlamofireを用いた実装を書く
        return
    }
}
