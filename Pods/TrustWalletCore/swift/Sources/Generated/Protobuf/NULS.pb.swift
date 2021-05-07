// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: NULS.proto
//
// For information on using the generated types, please see the documentation:
//   https://github.com/apple/swift-protobuf/

import Foundation
import SwiftProtobuf

// If the compiler emits an error on this type, it is because this file
// was generated by a version of the `protoc` Swift plug-in that is
// incompatible with the version of SwiftProtobuf to which you are linking.
// Please ensure that you are building against the same version of the API
// that was used to generate this file.
fileprivate struct _GeneratedWithProtocGenSwiftVersion: SwiftProtobuf.ProtobufAPIVersionCheck {
  struct _2: SwiftProtobuf.ProtobufAPIVersion_2 {}
  typealias Version = _2
}

public struct TW_NULS_Proto_TransactionCoinFrom {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var fromAddress: String = String()

  public var assetsChainid: UInt32 = 0

  public var assetsID: UInt32 = 0

  ///tranaction out amount (256-bit number)
  public var idAmount: Data = SwiftProtobuf.Internal.emptyData

  ///8 bytes
  public var nonce: Data = SwiftProtobuf.Internal.emptyData

  ///lock status: 1 locked; 0 unlocked
  public var locked: UInt32 = 0

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

public struct TW_NULS_Proto_TransactionCoinTo {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var toAddress: String = String()

  public var assetsChainid: UInt32 = 0

  public var assetsID: UInt32 = 0

  /// tranaction amount (256-bit number)
  public var idAmount: Data = SwiftProtobuf.Internal.emptyData

  public var lockTime: UInt32 = 0

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

public struct TW_NULS_Proto_Signature {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var pkeyLen: UInt32 = 0

  public var publicKey: Data = SwiftProtobuf.Internal.emptyData

  public var sigLen: UInt32 = 0

  public var signature: Data = SwiftProtobuf.Internal.emptyData

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

public struct TW_NULS_Proto_Transaction {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var type: UInt32 = 0

  public var timestamp: UInt32 = 0

  public var remark: String = String()

  public var txData: Data = SwiftProtobuf.Internal.emptyData

  ///CoinFrom
  public var input: TW_NULS_Proto_TransactionCoinFrom {
    get {return _input ?? TW_NULS_Proto_TransactionCoinFrom()}
    set {_input = newValue}
  }
  /// Returns true if `input` has been explicitly set.
  public var hasInput: Bool {return self._input != nil}
  /// Clears the value of `input`. Subsequent reads from it will return its default value.
  public mutating func clearInput() {self._input = nil}

  ///CoinTo
  public var output: TW_NULS_Proto_TransactionCoinTo {
    get {return _output ?? TW_NULS_Proto_TransactionCoinTo()}
    set {_output = newValue}
  }
  /// Returns true if `output` has been explicitly set.
  public var hasOutput: Bool {return self._output != nil}
  /// Clears the value of `output`. Subsequent reads from it will return its default value.
  public mutating func clearOutput() {self._output = nil}

  public var txSigs: TW_NULS_Proto_Signature {
    get {return _txSigs ?? TW_NULS_Proto_Signature()}
    set {_txSigs = newValue}
  }
  /// Returns true if `txSigs` has been explicitly set.
  public var hasTxSigs: Bool {return self._txSigs != nil}
  /// Clears the value of `txSigs`. Subsequent reads from it will return its default value.
  public mutating func clearTxSigs() {self._txSigs = nil}

  public var hash: UInt32 = 0

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _input: TW_NULS_Proto_TransactionCoinFrom? = nil
  fileprivate var _output: TW_NULS_Proto_TransactionCoinTo? = nil
  fileprivate var _txSigs: TW_NULS_Proto_Signature? = nil
}

/// Input data necessary to create a signed order.
public struct TW_NULS_Proto_SigningInput {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var privateKey: Data = SwiftProtobuf.Internal.emptyData

  public var from: String = String()

  public var to: String = String()

  public var amount: Data = SwiftProtobuf.Internal.emptyData

  public var chainID: UInt32 = 0

  public var idassetsID: UInt32 = 0

  ///The last 8 bytes of latest transaction hash 
  public var nonce: Data = SwiftProtobuf.Internal.emptyData

  public var remark: String = String()

  /// Account balance 
  public var balance: Data = SwiftProtobuf.Internal.emptyData

  /// time, accurate to the second
  public var timestamp: UInt32 = 0

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

public struct TW_NULS_Proto_SigningOutput {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var encoded: Data = SwiftProtobuf.Internal.emptyData

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "TW.NULS.Proto"

extension TW_NULS_Proto_TransactionCoinFrom: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".TransactionCoinFrom"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "from_address"),
    2: .standard(proto: "assets_chainid"),
    3: .standard(proto: "assets_id"),
    4: .standard(proto: "id_amount"),
    5: .same(proto: "nonce"),
    6: .same(proto: "locked"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularStringField(value: &self.fromAddress)
      case 2: try decoder.decodeSingularUInt32Field(value: &self.assetsChainid)
      case 3: try decoder.decodeSingularUInt32Field(value: &self.assetsID)
      case 4: try decoder.decodeSingularBytesField(value: &self.idAmount)
      case 5: try decoder.decodeSingularBytesField(value: &self.nonce)
      case 6: try decoder.decodeSingularUInt32Field(value: &self.locked)
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.fromAddress.isEmpty {
      try visitor.visitSingularStringField(value: self.fromAddress, fieldNumber: 1)
    }
    if self.assetsChainid != 0 {
      try visitor.visitSingularUInt32Field(value: self.assetsChainid, fieldNumber: 2)
    }
    if self.assetsID != 0 {
      try visitor.visitSingularUInt32Field(value: self.assetsID, fieldNumber: 3)
    }
    if !self.idAmount.isEmpty {
      try visitor.visitSingularBytesField(value: self.idAmount, fieldNumber: 4)
    }
    if !self.nonce.isEmpty {
      try visitor.visitSingularBytesField(value: self.nonce, fieldNumber: 5)
    }
    if self.locked != 0 {
      try visitor.visitSingularUInt32Field(value: self.locked, fieldNumber: 6)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: TW_NULS_Proto_TransactionCoinFrom, rhs: TW_NULS_Proto_TransactionCoinFrom) -> Bool {
    if lhs.fromAddress != rhs.fromAddress {return false}
    if lhs.assetsChainid != rhs.assetsChainid {return false}
    if lhs.assetsID != rhs.assetsID {return false}
    if lhs.idAmount != rhs.idAmount {return false}
    if lhs.nonce != rhs.nonce {return false}
    if lhs.locked != rhs.locked {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension TW_NULS_Proto_TransactionCoinTo: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".TransactionCoinTo"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "to_address"),
    2: .standard(proto: "assets_chainid"),
    3: .standard(proto: "assets_id"),
    4: .standard(proto: "id_amount"),
    5: .standard(proto: "lock_time"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularStringField(value: &self.toAddress)
      case 2: try decoder.decodeSingularUInt32Field(value: &self.assetsChainid)
      case 3: try decoder.decodeSingularUInt32Field(value: &self.assetsID)
      case 4: try decoder.decodeSingularBytesField(value: &self.idAmount)
      case 5: try decoder.decodeSingularUInt32Field(value: &self.lockTime)
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.toAddress.isEmpty {
      try visitor.visitSingularStringField(value: self.toAddress, fieldNumber: 1)
    }
    if self.assetsChainid != 0 {
      try visitor.visitSingularUInt32Field(value: self.assetsChainid, fieldNumber: 2)
    }
    if self.assetsID != 0 {
      try visitor.visitSingularUInt32Field(value: self.assetsID, fieldNumber: 3)
    }
    if !self.idAmount.isEmpty {
      try visitor.visitSingularBytesField(value: self.idAmount, fieldNumber: 4)
    }
    if self.lockTime != 0 {
      try visitor.visitSingularUInt32Field(value: self.lockTime, fieldNumber: 5)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: TW_NULS_Proto_TransactionCoinTo, rhs: TW_NULS_Proto_TransactionCoinTo) -> Bool {
    if lhs.toAddress != rhs.toAddress {return false}
    if lhs.assetsChainid != rhs.assetsChainid {return false}
    if lhs.assetsID != rhs.assetsID {return false}
    if lhs.idAmount != rhs.idAmount {return false}
    if lhs.lockTime != rhs.lockTime {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension TW_NULS_Proto_Signature: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".Signature"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "pkey_len"),
    2: .standard(proto: "public_key"),
    3: .standard(proto: "sig_len"),
    4: .same(proto: "signature"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularUInt32Field(value: &self.pkeyLen)
      case 2: try decoder.decodeSingularBytesField(value: &self.publicKey)
      case 3: try decoder.decodeSingularUInt32Field(value: &self.sigLen)
      case 4: try decoder.decodeSingularBytesField(value: &self.signature)
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.pkeyLen != 0 {
      try visitor.visitSingularUInt32Field(value: self.pkeyLen, fieldNumber: 1)
    }
    if !self.publicKey.isEmpty {
      try visitor.visitSingularBytesField(value: self.publicKey, fieldNumber: 2)
    }
    if self.sigLen != 0 {
      try visitor.visitSingularUInt32Field(value: self.sigLen, fieldNumber: 3)
    }
    if !self.signature.isEmpty {
      try visitor.visitSingularBytesField(value: self.signature, fieldNumber: 4)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: TW_NULS_Proto_Signature, rhs: TW_NULS_Proto_Signature) -> Bool {
    if lhs.pkeyLen != rhs.pkeyLen {return false}
    if lhs.publicKey != rhs.publicKey {return false}
    if lhs.sigLen != rhs.sigLen {return false}
    if lhs.signature != rhs.signature {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension TW_NULS_Proto_Transaction: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".Transaction"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "type"),
    2: .same(proto: "timestamp"),
    3: .same(proto: "remark"),
    4: .standard(proto: "tx_data"),
    5: .same(proto: "input"),
    6: .same(proto: "output"),
    7: .standard(proto: "tx_sigs"),
    8: .same(proto: "hash"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularUInt32Field(value: &self.type)
      case 2: try decoder.decodeSingularUInt32Field(value: &self.timestamp)
      case 3: try decoder.decodeSingularStringField(value: &self.remark)
      case 4: try decoder.decodeSingularBytesField(value: &self.txData)
      case 5: try decoder.decodeSingularMessageField(value: &self._input)
      case 6: try decoder.decodeSingularMessageField(value: &self._output)
      case 7: try decoder.decodeSingularMessageField(value: &self._txSigs)
      case 8: try decoder.decodeSingularUInt32Field(value: &self.hash)
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.type != 0 {
      try visitor.visitSingularUInt32Field(value: self.type, fieldNumber: 1)
    }
    if self.timestamp != 0 {
      try visitor.visitSingularUInt32Field(value: self.timestamp, fieldNumber: 2)
    }
    if !self.remark.isEmpty {
      try visitor.visitSingularStringField(value: self.remark, fieldNumber: 3)
    }
    if !self.txData.isEmpty {
      try visitor.visitSingularBytesField(value: self.txData, fieldNumber: 4)
    }
    if let v = self._input {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 5)
    }
    if let v = self._output {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 6)
    }
    if let v = self._txSigs {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 7)
    }
    if self.hash != 0 {
      try visitor.visitSingularUInt32Field(value: self.hash, fieldNumber: 8)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: TW_NULS_Proto_Transaction, rhs: TW_NULS_Proto_Transaction) -> Bool {
    if lhs.type != rhs.type {return false}
    if lhs.timestamp != rhs.timestamp {return false}
    if lhs.remark != rhs.remark {return false}
    if lhs.txData != rhs.txData {return false}
    if lhs._input != rhs._input {return false}
    if lhs._output != rhs._output {return false}
    if lhs._txSigs != rhs._txSigs {return false}
    if lhs.hash != rhs.hash {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension TW_NULS_Proto_SigningInput: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".SigningInput"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "private_key"),
    2: .same(proto: "from"),
    3: .same(proto: "to"),
    4: .same(proto: "amount"),
    5: .standard(proto: "chain_id"),
    6: .standard(proto: "idassets_id"),
    7: .same(proto: "nonce"),
    8: .same(proto: "remark"),
    9: .same(proto: "balance"),
    10: .same(proto: "timestamp"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularBytesField(value: &self.privateKey)
      case 2: try decoder.decodeSingularStringField(value: &self.from)
      case 3: try decoder.decodeSingularStringField(value: &self.to)
      case 4: try decoder.decodeSingularBytesField(value: &self.amount)
      case 5: try decoder.decodeSingularUInt32Field(value: &self.chainID)
      case 6: try decoder.decodeSingularUInt32Field(value: &self.idassetsID)
      case 7: try decoder.decodeSingularBytesField(value: &self.nonce)
      case 8: try decoder.decodeSingularStringField(value: &self.remark)
      case 9: try decoder.decodeSingularBytesField(value: &self.balance)
      case 10: try decoder.decodeSingularUInt32Field(value: &self.timestamp)
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.privateKey.isEmpty {
      try visitor.visitSingularBytesField(value: self.privateKey, fieldNumber: 1)
    }
    if !self.from.isEmpty {
      try visitor.visitSingularStringField(value: self.from, fieldNumber: 2)
    }
    if !self.to.isEmpty {
      try visitor.visitSingularStringField(value: self.to, fieldNumber: 3)
    }
    if !self.amount.isEmpty {
      try visitor.visitSingularBytesField(value: self.amount, fieldNumber: 4)
    }
    if self.chainID != 0 {
      try visitor.visitSingularUInt32Field(value: self.chainID, fieldNumber: 5)
    }
    if self.idassetsID != 0 {
      try visitor.visitSingularUInt32Field(value: self.idassetsID, fieldNumber: 6)
    }
    if !self.nonce.isEmpty {
      try visitor.visitSingularBytesField(value: self.nonce, fieldNumber: 7)
    }
    if !self.remark.isEmpty {
      try visitor.visitSingularStringField(value: self.remark, fieldNumber: 8)
    }
    if !self.balance.isEmpty {
      try visitor.visitSingularBytesField(value: self.balance, fieldNumber: 9)
    }
    if self.timestamp != 0 {
      try visitor.visitSingularUInt32Field(value: self.timestamp, fieldNumber: 10)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: TW_NULS_Proto_SigningInput, rhs: TW_NULS_Proto_SigningInput) -> Bool {
    if lhs.privateKey != rhs.privateKey {return false}
    if lhs.from != rhs.from {return false}
    if lhs.to != rhs.to {return false}
    if lhs.amount != rhs.amount {return false}
    if lhs.chainID != rhs.chainID {return false}
    if lhs.idassetsID != rhs.idassetsID {return false}
    if lhs.nonce != rhs.nonce {return false}
    if lhs.remark != rhs.remark {return false}
    if lhs.balance != rhs.balance {return false}
    if lhs.timestamp != rhs.timestamp {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension TW_NULS_Proto_SigningOutput: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".SigningOutput"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "encoded"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularBytesField(value: &self.encoded)
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.encoded.isEmpty {
      try visitor.visitSingularBytesField(value: self.encoded, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: TW_NULS_Proto_SigningOutput, rhs: TW_NULS_Proto_SigningOutput) -> Bool {
    if lhs.encoded != rhs.encoded {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}