// Generated using Sourcery 0.18.0 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT

struct DataSourceFactory {

    static func create() -> SomeRemoteDataSource {
        SomeAlamofireDataSource()
    }
    static func create() -> SomeLocalDataSource {
        SomeCoreDataSource()
    }
}
