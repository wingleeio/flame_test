///
//  Generated code. Do not modify.
//  source: data.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

// ignore_for_file: UNDEFINED_SHOWN_NAME
import 'dart:core' as $core;
import 'package:protobuf/protobuf.dart' as $pb;

class Direction extends $pb.ProtobufEnum {
  static const Direction UP = Direction._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'UP');
  static const Direction DOWN = Direction._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'DOWN');
  static const Direction LEFT = Direction._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'LEFT');
  static const Direction RIGHT = Direction._(3, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'RIGHT');

  static const $core.List<Direction> values = <Direction> [
    UP,
    DOWN,
    LEFT,
    RIGHT,
  ];

  static final $core.Map<$core.int, Direction> _byValue = $pb.ProtobufEnum.initByValue(values);
  static Direction? valueOf($core.int value) => _byValue[value];

  const Direction._($core.int v, $core.String n) : super(v, n);
}

class ClientPacketType extends $pb.ProtobufEnum {
  static const ClientPacketType MOVEMENT_INPUT = ClientPacketType._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'MOVEMENT_INPUT');

  static const $core.List<ClientPacketType> values = <ClientPacketType> [
    MOVEMENT_INPUT,
  ];

  static final $core.Map<$core.int, ClientPacketType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static ClientPacketType? valueOf($core.int value) => _byValue[value];

  const ClientPacketType._($core.int v, $core.String n) : super(v, n);
}

class ServerPacketType extends $pb.ProtobufEnum {
  static const ServerPacketType PLAYERS = ServerPacketType._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'PLAYERS');
  static const ServerPacketType PLAYER_DISCONNECTED = ServerPacketType._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'PLAYER_DISCONNECTED');

  static const $core.List<ServerPacketType> values = <ServerPacketType> [
    PLAYERS,
    PLAYER_DISCONNECTED,
  ];

  static final $core.Map<$core.int, ServerPacketType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static ServerPacketType? valueOf($core.int value) => _byValue[value];

  const ServerPacketType._($core.int v, $core.String n) : super(v, n);
}

