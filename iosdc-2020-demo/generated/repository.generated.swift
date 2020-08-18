// Generated using Sourcery 0.18.0 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT

struct RepositoryFactory {

    static func create() -> SomeRepository {
        SomeRepositoryImpl(
            localDataSource: DataSourceFactory.create(),
            remoteDataSource: DataSourceFactory.create()
        )
    }
}
