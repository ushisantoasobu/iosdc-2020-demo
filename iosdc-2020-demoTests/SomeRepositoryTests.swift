//
//  SomeRepositoryTests.swift
//  iosdc-2020-demoTests
//
//  Created by Shunsuke Sato on 2020/08/25.
//  Copyright © 2020 Shunsuke Sato. All rights reserved.
//

import XCTest
@testable import iosdc_2020_demo

class SomeRepositoryTests: XCTestCase {

    var localDataSource: MockedSomeLocalDataSource!
    var remoteDataSource: MockedSomeRemoteDataSource!

    var repository: SomeRepositoryImpl!

    override func setUpWithError() throws {
        localDataSource = MockedSomeLocalDataSource()
        remoteDataSource = MockedSomeRemoteDataSource()
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testFetch_when_local_is_empty() throws {
        localDataSource.stubbedFetchResult = []
        remoteDataSource.stubbedFetchResult = [SomeEntity.testData(id: 11111)]

        repository = SomeRepositoryImpl(localDataSource: localDataSource,
                                        remoteDataSource: remoteDataSource)
        let fetched = repository.fetch()

        XCTAssertEqual(fetched.count, 1)
        XCTAssertEqual(fetched.first!.id, 11111)
        XCTAssertTrue(localDataSource.invokedFetch)
        XCTAssertTrue(remoteDataSource.invokedFetch)
    }

    func testFetch_when_local_is_Not_empty() throws {
        localDataSource.stubbedFetchResult = [SomeEntity.testData(id: 22222)]

        repository = SomeRepositoryImpl(localDataSource: localDataSource,
                                        remoteDataSource: remoteDataSource)
        let fetched = repository.fetch()

        XCTAssertEqual(fetched.count, 1)
        XCTAssertEqual(fetched.first!.id, 22222)
        XCTAssertTrue(localDataSource.invokedFetch)
        XCTAssertFalse(remoteDataSource.invokedFetch)
    }
}
