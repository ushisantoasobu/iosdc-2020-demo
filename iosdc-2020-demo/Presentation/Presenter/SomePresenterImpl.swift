//
//  SomePresenterImpl.swift
//  iosdc-2020-demo
//
//  Created by Shunsuke Sato on 2020/08/16.
//  Copyright © 2020 Shunsuke Sato. All rights reserved.
//

import Foundation

struct SomePresenterImpl: SomePresenter {

    weak var view: SomeView?
    let repository: SomeRepository

    init(
        view: SomeView,
        repository: SomeRepository
    ) {
        self.view = view
        self.repository = repository
    }

    func viewDidLoad() {
        let entities = repository.fetch()
        view?.fetched(someEntities: entities)
    }
}
