// Generated using Sourcery 0.18.0 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT

import Foundation
@testable import iosdc_2020_demo


extension HogeEntity {
  static func testData(
      id: Int = 0,
      num: Int = 0
  ) -> HogeEntity {
      return HogeEntity(
          id: id,
          num: num
      )
  }
}   
extension SomeEntity {
  static func testData(
      id: Int = 0,
      name: String = "",
      type: SomeType = .hoge,
      complicatedType: SomeTypeWithAssociatedValue = .hoge(name: ""),
      hoge: HogeEntity = HogeEntity.testData(),
      imageUrl: String? = nil,
      createdAt: Date = Date()
  ) -> SomeEntity {
      return SomeEntity(
          id: id,
          name: name,
          type: type,
          complicatedType: complicatedType,
          hoge: hoge,
          imageUrl: imageUrl,
          createdAt: createdAt
      )
  }
}   

