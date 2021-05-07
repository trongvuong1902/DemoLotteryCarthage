//
//  JSONResponse.swift
//  DemoWebView
//
//  Created by Fury on 05/05/2021.
//

import Foundation

struct WalletData: Encodable {
    var address: String
    var name: String
    var asset: String
    var walletType: String
}

struct AccountData: Encodable{}
