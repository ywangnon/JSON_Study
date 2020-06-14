//
//  GetComplexJsonData.swift
//  JSONTest
//
//  Created by Hansub Yoo on 2020/06/13.
//  Copyright © 2020 Hansub Yoo. All rights reserved.
//

import Foundation

extension GetData {
    func getComplexJsonData() {
        if let path = Bundle.main.path(forResource: "complexJSON", ofType: "json") {
            do {
                let data = try Data(contentsOf: URL(fileURLWithPath: path), options: .mappedIfSafe)
                let JsonData = data
                let jsonData = try JSONDecoder().decode(complexJSON.self, from: data)
                print("\n---------- [ json ] ----------\n")
                print(jsonData)
            } catch let error {
                print(error.localizedDescription)
            }
        }
    }
}
