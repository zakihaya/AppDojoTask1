//
//  ViewController.swift
//  AppDojoTask1
//
//  Created by haayzaki on 2020/12/04.
//

import UIKit

final class ViewController: UIViewController {

    // MARK: Outlets
    @IBOutlet private weak var numberTextField1: UITextField!
    @IBOutlet private weak var numberTextField2: UITextField!
    @IBOutlet private weak var numberTextField3: UITextField!
    @IBOutlet private weak var numberTextField4: UITextField!
    @IBOutlet private weak var numberTextField5: UITextField!
    @IBOutlet private weak var resultLabel: UILabel!
    
    private var numberTextFields: [UITextField] = {
        [numberTextField1, numberTextField2, numberTextField3, numberTextField4, numberTextField5]
    }
    
    // MARK: Actions
    @IBAction func buttuonTapped(_ sender: Any) {
        resultLabel.text = getResult()
    }
    
    // MARK: Methods
    private func getResult() -> String {
        String(inputNumbers().reduce(0, +))
    }
    
    private func inputNumbers() -> [Int] {
        let texts = numberTextFields.map(\.text)
        return texts
            .map { text -> Int in
                // nilの場合は0として扱う
                guard let numText = text else { return 0 }
                // Int("")はnilとなるため、空文字も0として扱われる
                return Int(numText) ?? 0
            }
    }
}
