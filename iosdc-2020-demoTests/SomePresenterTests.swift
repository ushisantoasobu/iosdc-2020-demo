//
//  SomePresenterTests.swift
//  iosdc-2020-demoTests
//
//  Created by Shunsuke Sato on 2020/08/16.
//  Copyright © 2020 Shunsuke Sato. All rights reserved.
//

import XCTest
@testable import iosdc_2020_demo

class SomePresenterTests: XCTestCase {

    var presenter: SomePresenterImpl!

    var view: MockedSomeView!
    var repository: MockedSomeRepository!

    override func setUpWithError() throws {
        view = MockedSomeView()
        repository = MockedSomeRepository()
        presenter = SomePresenterImpl(view: view, repository: repository)
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testViewDidLoad() throws {
        repository.stubbedFetchResult = [
            SomeEntity.stub(id: 999)
        ]
        presenter.viewDidLoad()
        XCTAssertEqual(view.invokedFetchedParameters!.someEntities.count, 1)
        XCTAssertEqual(view.invokedFetchedParameters!.someEntities.first!.id, 999)
    }   
}

class MockedSomeView: SomeView {
    var invokedFetched = false
    var invokedFetchedCount = 0
    var invokedFetchedParameters: (someEntities: [SomeEntity], Void)?
    var invokedFetchedParametersList = [(someEntities: [SomeEntity], Void)]()
    func fetched(someEntities: [SomeEntity]) {
        invokedFetched = true
        invokedFetchedCount += 1
        invokedFetchedParameters = (someEntities, ())
        invokedFetchedParametersList.append((someEntities, ()))
    }
}

// 自動生成されるようになったので不要
//class MockedSomeRepository: SomeRepository {
//    var invokedFetch = false
//    var invokedFetchCount = 0
//    var stubbedFetchResult: [SomeEntity]! = []
//    func fetch() -> [SomeEntity] {
//        invokedFetch = true
//        invokedFetchCount += 1
//        return stubbedFetchResult
//    }
//    var invokedDelete = false
//    var invokedDeleteCount = 0
//    var invokedDeleteParameters: (id: Int, Void)?
//    var invokedDeleteParametersList = [(id: Int, Void)]()
//    func delete(id: Int) {
//        invokedDelete = true
//        invokedDeleteCount += 1
//        invokedDeleteParameters = (id, ())
//        invokedDeleteParametersList.append((id, ()))
//    }
//}
