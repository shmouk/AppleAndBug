//
//  UserDefaults.swift
//  MotionCarGame
//
//  Created by Марк on 9.07.23.
//

import UIKit
extension ViewController {
    func saveDefaultsSettings() {
        guard let name = nameTextField.text else { return }
        self.name = name
        userDefaults?.set(name, forKey: .name)
        userDefaults?.set(record, forKey: .record)
    }
    
    func loadDefaultsSettings() {
        self.nameTextField.text = userDefaults?.string(forKey: .name) ?? ""
        self.name = userDefaults?.string(forKey: .name) ?? ""
        self.record = userDefaults?.integer(forKey: .record) ?? 0
    }
}

extension UserDefaults {
    func set(_ value: Any?, forKey key: OptionKeys) {
        set(value, forKey: key.rawValue)
    }
    
    func string(forKey key: OptionKeys) -> String? {
        string(forKey: key.rawValue)
    }
    
    func integer(forKey key: OptionKeys) -> Int {
        integer(forKey: key.rawValue)
    }
}

enum OptionKeys: String {
    case name
    case record
}
