//
//  BridgeManagement.swift
//  DemoWebView
//
//  Created by Fury on 05/05/2021.
//

import Foundation
import UIKit
import WebKit

public struct BridgeRequestManagement {
    let message: WKScriptMessage!
    public init(message: WKScriptMessage) {
        self.message = message
    }
    
    func convertStringToDictionary(text: String) -> [String:AnyObject]? {
        if let data = text.data(using: .utf8) {
            do {
                let json = try JSONSerialization.jsonObject(with: data, options: .mutableContainers) as? [String:AnyObject]
                return json
            } catch {
                print("Something went wrong")
            }
        }
        return nil
    }
    
    public func handlerRequest(callback: @escaping (Result<String, Error>) -> ())  {
        guard let dict = convertStringToDictionary(text: message.body as! String),
              let key = dict["key"] as? String else {return}
        if let type = TypeRequest(rawValue: message.name),
           let request = JSBridgeRequest(rawValue: key) {
            
            switch type {
            case .native:
                let native = NativeRequest(walletType: .trust)
                switch request {
                case .getWallet:
                    native.getAddresses { result in
                        switch result {
                        case .success(let responses): callback(.success(responses.first!))
                        case .failure(let error): callback(.failure(error))
                        }
                    }
                case .getBalance: callback(.success(native.getBalance()))
                case .getAccount: callback(.success(native.getAccount()))
                case .signMsg:
                    let data = dict["data"] as! [String: Any]
                    let msg = data["message"] as! String
                    native.signMsg(msg: msg, callback: callback)
                case .sendToken:
                    guard let data = dict["data"] as? [String: Any],
                          let address = data["to"] as? String else {return}
                    var amount = ""
                    if let value = data["amount"] as? Int64 {
                        amount = String(value)
                    }
                    
                    if let value = data["amount"] as? String {
                        amount = value
                    }
                    native.sendToken(to: address, amount: amount, callback: callback)
                case .sendNativeToken:
                    guard let data = dict["data"] as? [String: Any],
                          let contractAddress = data["contractAddress"] as? String,
                          let address = data["address"] as? String
                          else {return}
                    
                    var amount = ""
                    if let value = data["amount"] as? Int64 {
                        amount = String(value)
                    }
                    
                    if let value = data["amount"] as? String {
                        amount = value
                    }
                    native.sendNativeToken(contractAddress: contractAddress,
                                                  toAddress: address, amount: amount, callback: callback)
                case .signTrans: return
                }
            case .networkNative:
                return
            }
        }
        return
    }
}
