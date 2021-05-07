// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: Stellar.proto
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

public struct TW_Stellar_Proto_MemoVoid {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

public struct TW_Stellar_Proto_MemoText {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var text: String = String()

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

public struct TW_Stellar_Proto_MemoId {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var id: Int64 = 0

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

public struct TW_Stellar_Proto_MemoHash {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var hash: Data = SwiftProtobuf.Internal.emptyData

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

/// Input data necessary to create a signed transaction.
public struct TW_Stellar_Proto_SigningInput {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var amount: Int64 = 0

  public var fee: Int32 = 0

  public var sequence: Int64 = 0

  public var account: String = String()

  public var destination: String = String()

  /// Private key.
  public var privateKey: Data = SwiftProtobuf.Internal.emptyData

  public var memoTypeOneof: TW_Stellar_Proto_SigningInput.OneOf_MemoTypeOneof? = nil

  public var memoVoid: TW_Stellar_Proto_MemoVoid {
    get {
      if case .memoVoid(let v)? = memoTypeOneof {return v}
      return TW_Stellar_Proto_MemoVoid()
    }
    set {memoTypeOneof = .memoVoid(newValue)}
  }

  public var memoText: TW_Stellar_Proto_MemoText {
    get {
      if case .memoText(let v)? = memoTypeOneof {return v}
      return TW_Stellar_Proto_MemoText()
    }
    set {memoTypeOneof = .memoText(newValue)}
  }

  public var memoID: TW_Stellar_Proto_MemoId {
    get {
      if case .memoID(let v)? = memoTypeOneof {return v}
      return TW_Stellar_Proto_MemoId()
    }
    set {memoTypeOneof = .memoID(newValue)}
  }

  public var memoHash: TW_Stellar_Proto_MemoHash {
    get {
      if case .memoHash(let v)? = memoTypeOneof {return v}
      return TW_Stellar_Proto_MemoHash()
    }
    set {memoTypeOneof = .memoHash(newValue)}
  }

  public var memoReturnHash: TW_Stellar_Proto_MemoHash {
    get {
      if case .memoReturnHash(let v)? = memoTypeOneof {return v}
      return TW_Stellar_Proto_MemoHash()
    }
    set {memoTypeOneof = .memoReturnHash(newValue)}
  }

  public var operationType: TW_Stellar_Proto_SigningInput.OperationType = .createAccount

  public var passphrase: String = String()

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public enum OneOf_MemoTypeOneof: Equatable {
    case memoVoid(TW_Stellar_Proto_MemoVoid)
    case memoText(TW_Stellar_Proto_MemoText)
    case memoID(TW_Stellar_Proto_MemoId)
    case memoHash(TW_Stellar_Proto_MemoHash)
    case memoReturnHash(TW_Stellar_Proto_MemoHash)

  #if !swift(>=4.1)
    public static func ==(lhs: TW_Stellar_Proto_SigningInput.OneOf_MemoTypeOneof, rhs: TW_Stellar_Proto_SigningInput.OneOf_MemoTypeOneof) -> Bool {
      switch (lhs, rhs) {
      case (.memoVoid(let l), .memoVoid(let r)): return l == r
      case (.memoText(let l), .memoText(let r)): return l == r
      case (.memoID(let l), .memoID(let r)): return l == r
      case (.memoHash(let l), .memoHash(let r)): return l == r
      case (.memoReturnHash(let l), .memoReturnHash(let r)): return l == r
      default: return false
      }
    }
  #endif
  }

  public enum OperationType: SwiftProtobuf.Enum {
    public typealias RawValue = Int
    case createAccount // = 0
    case payment // = 1
    case UNRECOGNIZED(Int)

    public init() {
      self = .createAccount
    }

    public init?(rawValue: Int) {
      switch rawValue {
      case 0: self = .createAccount
      case 1: self = .payment
      default: self = .UNRECOGNIZED(rawValue)
      }
    }

    public var rawValue: Int {
      switch self {
      case .createAccount: return 0
      case .payment: return 1
      case .UNRECOGNIZED(let i): return i
      }
    }

  }

  public init() {}
}

#if swift(>=4.2)

extension TW_Stellar_Proto_SigningInput.OperationType: CaseIterable {
  // The compiler won't synthesize support with the UNRECOGNIZED case.
  public static var allCases: [TW_Stellar_Proto_SigningInput.OperationType] = [
    .createAccount,
    .payment,
  ]
}

#endif  // swift(>=4.2)

/// Transaction signing output.
public struct TW_Stellar_Proto_SigningOutput {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Signature.
  public var signature: String = String()

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "TW.Stellar.Proto"

extension TW_Stellar_Proto_MemoVoid: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".MemoVoid"
  public static let _protobuf_nameMap = SwiftProtobuf._NameMap()

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let _ = try decoder.nextFieldNumber() {
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: TW_Stellar_Proto_MemoVoid, rhs: TW_Stellar_Proto_MemoVoid) -> Bool {
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension TW_Stellar_Proto_MemoText: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".MemoText"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "text"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularStringField(value: &self.text)
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.text.isEmpty {
      try visitor.visitSingularStringField(value: self.text, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: TW_Stellar_Proto_MemoText, rhs: TW_Stellar_Proto_MemoText) -> Bool {
    if lhs.text != rhs.text {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension TW_Stellar_Proto_MemoId: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".MemoId"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "id"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularInt64Field(value: &self.id)
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.id != 0 {
      try visitor.visitSingularInt64Field(value: self.id, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: TW_Stellar_Proto_MemoId, rhs: TW_Stellar_Proto_MemoId) -> Bool {
    if lhs.id != rhs.id {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension TW_Stellar_Proto_MemoHash: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".MemoHash"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "hash"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularBytesField(value: &self.hash)
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.hash.isEmpty {
      try visitor.visitSingularBytesField(value: self.hash, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: TW_Stellar_Proto_MemoHash, rhs: TW_Stellar_Proto_MemoHash) -> Bool {
    if lhs.hash != rhs.hash {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension TW_Stellar_Proto_SigningInput: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".SigningInput"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "amount"),
    2: .same(proto: "fee"),
    3: .same(proto: "sequence"),
    4: .same(proto: "account"),
    5: .same(proto: "destination"),
    6: .standard(proto: "private_key"),
    7: .standard(proto: "memo_void"),
    8: .standard(proto: "memo_text"),
    9: .standard(proto: "memo_id"),
    10: .standard(proto: "memo_hash"),
    11: .standard(proto: "memo_return_hash"),
    12: .standard(proto: "operation_type"),
    13: .same(proto: "passphrase"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularInt64Field(value: &self.amount)
      case 2: try decoder.decodeSingularInt32Field(value: &self.fee)
      case 3: try decoder.decodeSingularInt64Field(value: &self.sequence)
      case 4: try decoder.decodeSingularStringField(value: &self.account)
      case 5: try decoder.decodeSingularStringField(value: &self.destination)
      case 6: try decoder.decodeSingularBytesField(value: &self.privateKey)
      case 7:
        var v: TW_Stellar_Proto_MemoVoid?
        if let current = self.memoTypeOneof {
          try decoder.handleConflictingOneOf()
          if case .memoVoid(let m) = current {v = m}
        }
        try decoder.decodeSingularMessageField(value: &v)
        if let v = v {self.memoTypeOneof = .memoVoid(v)}
      case 8:
        var v: TW_Stellar_Proto_MemoText?
        if let current = self.memoTypeOneof {
          try decoder.handleConflictingOneOf()
          if case .memoText(let m) = current {v = m}
        }
        try decoder.decodeSingularMessageField(value: &v)
        if let v = v {self.memoTypeOneof = .memoText(v)}
      case 9:
        var v: TW_Stellar_Proto_MemoId?
        if let current = self.memoTypeOneof {
          try decoder.handleConflictingOneOf()
          if case .memoID(let m) = current {v = m}
        }
        try decoder.decodeSingularMessageField(value: &v)
        if let v = v {self.memoTypeOneof = .memoID(v)}
      case 10:
        var v: TW_Stellar_Proto_MemoHash?
        if let current = self.memoTypeOneof {
          try decoder.handleConflictingOneOf()
          if case .memoHash(let m) = current {v = m}
        }
        try decoder.decodeSingularMessageField(value: &v)
        if let v = v {self.memoTypeOneof = .memoHash(v)}
      case 11:
        var v: TW_Stellar_Proto_MemoHash?
        if let current = self.memoTypeOneof {
          try decoder.handleConflictingOneOf()
          if case .memoReturnHash(let m) = current {v = m}
        }
        try decoder.decodeSingularMessageField(value: &v)
        if let v = v {self.memoTypeOneof = .memoReturnHash(v)}
      case 12: try decoder.decodeSingularEnumField(value: &self.operationType)
      case 13: try decoder.decodeSingularStringField(value: &self.passphrase)
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.amount != 0 {
      try visitor.visitSingularInt64Field(value: self.amount, fieldNumber: 1)
    }
    if self.fee != 0 {
      try visitor.visitSingularInt32Field(value: self.fee, fieldNumber: 2)
    }
    if self.sequence != 0 {
      try visitor.visitSingularInt64Field(value: self.sequence, fieldNumber: 3)
    }
    if !self.account.isEmpty {
      try visitor.visitSingularStringField(value: self.account, fieldNumber: 4)
    }
    if !self.destination.isEmpty {
      try visitor.visitSingularStringField(value: self.destination, fieldNumber: 5)
    }
    if !self.privateKey.isEmpty {
      try visitor.visitSingularBytesField(value: self.privateKey, fieldNumber: 6)
    }
    switch self.memoTypeOneof {
    case .memoVoid(let v)?:
      try visitor.visitSingularMessageField(value: v, fieldNumber: 7)
    case .memoText(let v)?:
      try visitor.visitSingularMessageField(value: v, fieldNumber: 8)
    case .memoID(let v)?:
      try visitor.visitSingularMessageField(value: v, fieldNumber: 9)
    case .memoHash(let v)?:
      try visitor.visitSingularMessageField(value: v, fieldNumber: 10)
    case .memoReturnHash(let v)?:
      try visitor.visitSingularMessageField(value: v, fieldNumber: 11)
    case nil: break
    }
    if self.operationType != .createAccount {
      try visitor.visitSingularEnumField(value: self.operationType, fieldNumber: 12)
    }
    if !self.passphrase.isEmpty {
      try visitor.visitSingularStringField(value: self.passphrase, fieldNumber: 13)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: TW_Stellar_Proto_SigningInput, rhs: TW_Stellar_Proto_SigningInput) -> Bool {
    if lhs.amount != rhs.amount {return false}
    if lhs.fee != rhs.fee {return false}
    if lhs.sequence != rhs.sequence {return false}
    if lhs.account != rhs.account {return false}
    if lhs.destination != rhs.destination {return false}
    if lhs.privateKey != rhs.privateKey {return false}
    if lhs.memoTypeOneof != rhs.memoTypeOneof {return false}
    if lhs.operationType != rhs.operationType {return false}
    if lhs.passphrase != rhs.passphrase {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension TW_Stellar_Proto_SigningInput.OperationType: SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    0: .same(proto: "CREATE_ACCOUNT"),
    1: .same(proto: "PAYMENT"),
  ]
}

extension TW_Stellar_Proto_SigningOutput: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".SigningOutput"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "signature"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularStringField(value: &self.signature)
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.signature.isEmpty {
      try visitor.visitSingularStringField(value: self.signature, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: TW_Stellar_Proto_SigningOutput, rhs: TW_Stellar_Proto_SigningOutput) -> Bool {
    if lhs.signature != rhs.signature {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}