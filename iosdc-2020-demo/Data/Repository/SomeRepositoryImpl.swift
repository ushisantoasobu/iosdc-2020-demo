//
//  SomeRepositoryImpl.swift
//  iosdc-2020-demo
//
//  Created by Shunsuke Sato on 2020/08/16.
//  Copyright © 2020 Shunsuke Sato. All rights reserved.
//

import Foundation

struct SomeRepositoryImpl: SomeRepository {

    let localDataSource: SomeLocalDataSource
    let remoteDataSource: SomeRemoteDataSource

    init(
        localDataSource: SomeLocalDataSource,
        remoteDataSource: SomeRemoteDataSource
    ) {
        self.localDataSource = localDataSource
        self.remoteDataSource = remoteDataSource
    }

    func fetch() -> [SomeEntity] {
        let entities = localDataSource.fetch()
        if !entities.isEmpty { return entities }

        return remoteDataSource.fetch()
    }

    func delete(id: Int) {
        remoteDataSource.delete(id: id)
    }
}
