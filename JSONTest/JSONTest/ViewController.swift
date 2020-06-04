//
//  ViewController.swift
//  JSONTest
//
//  Created by Hansub Yoo on 2020/06/04.
//  Copyright © 2020 Hansub Yoo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.getJsonData()
    }


}

extension ViewController {
    func getJsonData() {
        if let path = Bundle.main.path(forResource: "easyJSON", ofType: "json") {
            do {
                let data = try Data(contentsOf: URL(fileURLWithPath: path), options: .mappedIfSafe)
                let jsonData = try JSONDecoder().decode(easyJson.self, from: data)
                print("\n---------- [ json ] ----------\n")
                print(jsonData)
            } catch let error {
                print(error.localizedDescription)
            }
        }
    }
}
