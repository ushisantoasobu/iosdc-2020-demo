//
//  SomeRepository.swift
//  iosdc-2020-demo
//
//  Created by Shunsuke Sato on 2020/08/16.
//  Copyright © 2020 Shunsuke Sato. All rights reserved.
//

import Foundation

protocol SomeRepository {
    func fetch() -> [SomeEntity]
    func delete(id: Int)
}
