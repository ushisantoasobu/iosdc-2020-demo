// Generated using Sourcery 0.18.0 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT

import Foundation
@testable import iosdc_2020_demo

/**
 * 以下把握できている自動生成が難しいケース
 *  - オーバーロードのメソッドをもつもの
 *  - クロージャをメソッドの引数にもつもの
 *  - クラス（具体的なものとしてはUIView）を継承しているプロトコル
 */








class MockedSomeLocalDataSource: SomeLocalDataSource {
    var invokedFetch = false
    var invokedFetchCount = 0
    var stubbedFetchResult: [SomeEntity]!
    func fetch() -> [SomeEntity] {
        invokedFetch = true
        invokedFetchCount += 1
        return stubbedFetchResult
    }
}
