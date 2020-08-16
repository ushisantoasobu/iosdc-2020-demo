//
//  SomeRepositoryImpl.swift
//  iosdc-2020-demo
//
//  Created by Shunsuke Sato on 2020/08/16.
//  Copyright © 2020 Shunsuke Sato. All rights reserved.
//

import Foundation

struct SomeRepositoryImpl: SomeRepository {

    let dataSource: SomeRemoteDataSource

    init(dataSource: SomeRemoteDataSource) {
        self.dataSource = dataSource
    }

    func fetch() -> [SomeEntity] {
        dataSource.fetch()
    }

    func delete(id: Int) {
        dataSource.delete(id: id)
    }
}
