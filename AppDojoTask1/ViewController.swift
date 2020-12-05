//
//  ViewController.swift
//  AppDojoTask1
//
//  Created by haayzaki on 2020/12/04.
//

import UIKit

class ViewController: UIViewController {

    // MARK: Outlets
    @IBOutlet weak var numberTextField1: UITextField!
    @IBOutlet weak var numberTextField2: UITextField!
    @IBOutlet weak var numberTextField3: UITextField!
    @IBOutlet weak var numberTextField4: UITextField!
    @IBOutlet weak var numberTextField5: UITextField!
    @IBOutlet weak var resultLabel: UILabel!
    
    // MARK: Actions
    @IBAction func buttuonTapped(_ sender: Any) {
        self.resultLabel.text = self.getResult()
    }
    
    // MARK: Lifecycle Events
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    // MARK: Methods
    private func getResult() -> String {
        let resultInt = self.inputNumbers().reduce(0, { $0 + $1 })
        return String(resultInt)
    }
    
    private func inputNumbers() -> [Int] {
        let texts = [
            self.numberTextField1.text,
            self.numberTextField2.text,
            self.numberTextField3.text,
            self.numberTextField4.text,
            self.numberTextField5.text
        ]
        return texts
            .map({ text -> Int in
                // nilの場合は0として扱う
                guard let numText = text else { return 0 }
                // Int("")はnilとなるため、空文字も0として扱われる
                return Int(numText) ?? 0
            })
    }
    
}

