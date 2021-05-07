//
//  TrustWalletUtil.swift
//  DemoWebView
//
//  Created by Fury on 04/05/2021.
//

import Foundation
import WalletCore
import SwiftProtobuf
import TrustSDK

class TrustWalletUtil {
    func signMessage(message: String, callback: @escaping (Result<String, Error>) -> Void) {
        let data = Data(message.utf8)
        //        let message = Data("Tron Signed Message: \n\(data.count)".utf8) + data
//        let hash = data.sha3(.keccak256)
        TrustSDK.signers.ethereum.sign(message: data) { result in
            switch result {
            case .success(let signature):
                print("Signature: \(signature)")
                callback(.success(signature))
            case .failure(let error): print(error.localizedDescription)
                callback(.failure(error))
            }
        }
    }
    
    func getAddress(callback: @escaping (Result<[String], Error>) -> Void) {
        TrustSDK.getAccounts(for: [.tron], callback: callback)
    }
    
    static func sendTrx(amount: String, address: String,
                        callback: @escaping (Result<String, Error>) -> Void) {
        let tx = TrustSDK.Transaction(asset: UniversalAssetID(coin: .tron, token: ""),
                                      to: address,
                                      amount: amount,
                                      action: .transfer,
                                      confirm: .send)
        TrustSDK.signers.tron.sign(tx, callback: callback)
    }
    
    static func sendNativeCoin(contractAddress: String, to: String, amount: String,
                               callback: @escaping (Result<String, Error>) -> Void) {
        let amount = String(amount)
        let asset = UniversalAssetID(coin: .tron, token: contractAddress)
        print(asset.description)
        let tx = TrustSDK.Transaction(asset: UniversalAssetID(coin: .tron, token: contractAddress),
                                      to: to,
                                      amount: amount,
                                      action: .transfer,
                                      confirm: .send)
        
        TrustSDK.signers.tron.sign(tx, callback: callback)
    }
    
}
