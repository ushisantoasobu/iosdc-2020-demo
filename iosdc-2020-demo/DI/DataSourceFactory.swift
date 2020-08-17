//
//  DataSourceFactory.swift
//  iosdc-2020-demo
//
//  Created by Shunsuke Sato on 2020/08/17.
//  Copyright © 2020 Shunsuke Sato. All rights reserved.
//

import Foundation

struct DataSourceFactory {

    static func create() -> SomeRemoteDataSource {
        return SomeAlamofireDataSource()
    }
}
