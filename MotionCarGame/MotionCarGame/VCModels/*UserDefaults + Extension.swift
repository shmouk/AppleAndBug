////
////  UserDefaults.swift
////  MotionCarGame
////
////  Created by Марк on 7.07.23.
////
//
//import UIKit
//
//#if false
//
//
//class UserModel: NSObject, NSCoding {
//    
//    let name: String
//    let record: Int
//    
//    init(name: String, record: Int) {
//        self.name = name
//        self.record = record
//    }
//    
//    func encode(with coder: NSCoder) {
//        coder.encode(name, forKey: "name")
//        coder.encode(record, forKey: "record")
//    }
//    
//    required init?(coder: NSCoder) {
//        name = coder.decodeObject(forKey: "name") as? String ?? ""
//        record = coder.decodeInteger(forKey: "record")
//    }
//}
//
//final class UserSettings {
//    
//    private enum OptionKeys: String {
//        case userModel
//    }
//    
//    static var userModel: UserModel? {
//        get {
//            guard let savedData = UserDefaults.standard.object(forKey: OptionKeys.userModel.rawValue) as? Data, let decodedModel = try? NSKeyedUnarchiver.unarchivedObject(ofClass: UserModel.self, from: savedData as Data) else { 
//                return nil
//            }
//            return decodedModel
//        }
//        set {
//            let defaults = UserDefaults.standard
//            let key = OptionKeys.userModel.rawValue
//            
//            if let userModel = newValue {
//                if let savedData = try? NSKeyedArchiver.archivedData(withRootObject: userModel, requiringSecureCoding: false) {
//                    defaults.set(savedData, forKey: key)
//                }
//            }
//        }
//    }
//}
//extension ViewController {
//    // MARK: - Defaults Settings
//        
//        func saveDefaultsSettings() {
//            guard let name = nameTextField.text else { return }
//            let record = self.record
//            let userObj = UserModel(name: name, record: record)
//            UserSettings.userModel = userObj
//        }
//        
//    func loadDefaultsSettings() {
//        guard let userModel = UserSettings.userModel else { return }
//            self.record = userModel.record
//            self.name = userModel.name
//        updateSettingsSubviews()
//        }
//        
//}
//
//#endif
