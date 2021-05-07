// Copyright Trust Wallet. All rights reserved.
//
// This file is part of TrustSDK. The full TrustSDK copyright notice, including
// terms governing use, modification, and redistribution, is contained in the
// file LICENSE at the root of the source code distribution tree.

import Foundation
import WalletCore

struct TransactionRequest: CallbackRequest {
    enum QueryItems: String {
        case error, message, data, hash = "tx_hash"
    }

    typealias Response = String

    let command: TrustSDK.Command
    let callback: Callback

    init(command: TrustSDK.Command, callback: @escaping Callback) {
        self.command = command
        self.callback = callback
    }

    func resolve(with components: URLComponents) {
        if let error = components.queryItem(for: QueryItems.error.rawValue)?.value {
            let message = components.queryItem(for: QueryItems.message.rawValue)?.value
            callback(.failure(TrustSDKError(from: error, value: message) ?? TrustSDKError.unknown))
            return
        }

        if let data = components.queryItem(for: QueryItems.data.rawValue)?.value {
            callback(.success(data))
        } else {
            callback(.failure(TrustSDKError.invalidResponse))
        }
    }
}
