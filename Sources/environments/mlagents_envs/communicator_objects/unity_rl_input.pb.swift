// DO NOT EDIT.
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: mlagents_envs/communicator_objects/unity_rl_input.proto
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

struct CommunicatorObjects_UnityRLInputProto {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var agentActions: Dictionary<String,CommunicatorObjects_UnityRLInputProto.ListAgentActionProto> = [:]

  var command: CommunicatorObjects_CommandProto = .step

  var sideChannel: Data = SwiftProtobuf.Internal.emptyData

  var unknownFields = SwiftProtobuf.UnknownStorage()

  struct ListAgentActionProto {
    // SwiftProtobuf.Message conformance is added in an extension below. See the
    // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
    // methods supported on all messages.

    var value: [CommunicatorObjects_AgentActionProto] = []

    var unknownFields = SwiftProtobuf.UnknownStorage()

    init() {}
  }

  init() {}
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "communicator_objects"

extension CommunicatorObjects_UnityRLInputProto: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".UnityRLInputProto"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "agent_actions"),
    4: .same(proto: "command"),
    5: .standard(proto: "side_channel"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeMapField(fieldType: SwiftProtobuf._ProtobufMessageMap<SwiftProtobuf.ProtobufString,CommunicatorObjects_UnityRLInputProto.ListAgentActionProto>.self, value: &self.agentActions)
      case 4: try decoder.decodeSingularEnumField(value: &self.command)
      case 5: try decoder.decodeSingularBytesField(value: &self.sideChannel)
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.agentActions.isEmpty {
      try visitor.visitMapField(fieldType: SwiftProtobuf._ProtobufMessageMap<SwiftProtobuf.ProtobufString,CommunicatorObjects_UnityRLInputProto.ListAgentActionProto>.self, value: self.agentActions, fieldNumber: 1)
    }
    if self.command != .step {
      try visitor.visitSingularEnumField(value: self.command, fieldNumber: 4)
    }
    if !self.sideChannel.isEmpty {
      try visitor.visitSingularBytesField(value: self.sideChannel, fieldNumber: 5)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: CommunicatorObjects_UnityRLInputProto, rhs: CommunicatorObjects_UnityRLInputProto) -> Bool {
    if lhs.agentActions != rhs.agentActions {return false}
    if lhs.command != rhs.command {return false}
    if lhs.sideChannel != rhs.sideChannel {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension CommunicatorObjects_UnityRLInputProto.ListAgentActionProto: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = CommunicatorObjects_UnityRLInputProto.protoMessageName + ".ListAgentActionProto"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "value"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeRepeatedMessageField(value: &self.value)
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.value.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.value, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: CommunicatorObjects_UnityRLInputProto.ListAgentActionProto, rhs: CommunicatorObjects_UnityRLInputProto.ListAgentActionProto) -> Bool {
    if lhs.value != rhs.value {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}