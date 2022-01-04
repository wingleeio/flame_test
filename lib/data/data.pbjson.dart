///
//  Generated code. Do not modify.
//  source: data.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use directionDescriptor instead')
const Direction$json = const {
  '1': 'Direction',
  '2': const [
    const {'1': 'UP', '2': 0},
    const {'1': 'DOWN', '2': 1},
    const {'1': 'LEFT', '2': 2},
    const {'1': 'RIGHT', '2': 3},
  ],
};

/// Descriptor for `Direction`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List directionDescriptor = $convert.base64Decode('CglEaXJlY3Rpb24SBgoCVVAQABIICgRET1dOEAESCAoETEVGVBACEgkKBVJJR0hUEAM=');
@$core.Deprecated('Use clientPacketTypeDescriptor instead')
const ClientPacketType$json = const {
  '1': 'ClientPacketType',
  '2': const [
    const {'1': 'MOVEMENT_INPUT', '2': 0},
  ],
};

/// Descriptor for `ClientPacketType`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List clientPacketTypeDescriptor = $convert.base64Decode('ChBDbGllbnRQYWNrZXRUeXBlEhIKDk1PVkVNRU5UX0lOUFVUEAA=');
@$core.Deprecated('Use serverPacketTypeDescriptor instead')
const ServerPacketType$json = const {
  '1': 'ServerPacketType',
  '2': const [
    const {'1': 'PLAYERS', '2': 0},
    const {'1': 'PLAYER_DISCONNECTED', '2': 1},
  ],
};

/// Descriptor for `ServerPacketType`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List serverPacketTypeDescriptor = $convert.base64Decode('ChBTZXJ2ZXJQYWNrZXRUeXBlEgsKB1BMQVlFUlMQABIXChNQTEFZRVJfRElTQ09OTkVDVEVEEAE=');
@$core.Deprecated('Use movementDescriptor instead')
const Movement$json = const {
  '1': 'Movement',
  '2': const [
    const {'1': 'up', '3': 1, '4': 1, '5': 8, '10': 'up'},
    const {'1': 'down', '3': 2, '4': 1, '5': 8, '10': 'down'},
    const {'1': 'left', '3': 3, '4': 1, '5': 8, '10': 'left'},
    const {'1': 'right', '3': 4, '4': 1, '5': 8, '10': 'right'},
  ],
};

/// Descriptor for `Movement`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List movementDescriptor = $convert.base64Decode('CghNb3ZlbWVudBIOCgJ1cBgBIAEoCFICdXASEgoEZG93bhgCIAEoCFIEZG93bhISCgRsZWZ0GAMgASgIUgRsZWZ0EhQKBXJpZ2h0GAQgASgIUgVyaWdodA==');
@$core.Deprecated('Use movementInputDescriptor instead')
const MovementInput$json = const {
  '1': 'MovementInput',
  '2': const [
    const {'1': 'direction', '3': 1, '4': 1, '5': 14, '6': '.Direction', '10': 'direction'},
    const {'1': 'isMoving', '3': 2, '4': 1, '5': 8, '10': 'isMoving'},
  ],
};

/// Descriptor for `MovementInput`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List movementInputDescriptor = $convert.base64Decode('Cg1Nb3ZlbWVudElucHV0EigKCWRpcmVjdGlvbhgBIAEoDjIKLkRpcmVjdGlvblIJZGlyZWN0aW9uEhoKCGlzTW92aW5nGAIgASgIUghpc01vdmluZw==');
@$core.Deprecated('Use playerDescriptor instead')
const Player$json = const {
  '1': 'Player',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
    const {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'x', '3': 3, '4': 1, '5': 1, '10': 'x'},
    const {'1': 'y', '3': 4, '4': 1, '5': 1, '10': 'y'},
    const {'1': 'sprite', '3': 5, '4': 1, '5': 5, '10': 'sprite'},
    const {'1': 'direction', '3': 6, '4': 1, '5': 14, '6': '.Direction', '10': 'direction'},
    const {'1': 'movement', '3': 7, '4': 1, '5': 11, '6': '.Movement', '10': 'movement'},
    const {'1': 'speed', '3': 8, '4': 1, '5': 1, '10': 'speed'},
  ],
};

/// Descriptor for `Player`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List playerDescriptor = $convert.base64Decode('CgZQbGF5ZXISDgoCaWQYASABKAVSAmlkEhIKBG5hbWUYAiABKAlSBG5hbWUSDAoBeBgDIAEoAVIBeBIMCgF5GAQgASgBUgF5EhYKBnNwcml0ZRgFIAEoBVIGc3ByaXRlEigKCWRpcmVjdGlvbhgGIAEoDjIKLkRpcmVjdGlvblIJZGlyZWN0aW9uEiUKCG1vdmVtZW50GAcgASgLMgkuTW92ZW1lbnRSCG1vdmVtZW50EhQKBXNwZWVkGAggASgBUgVzcGVlZA==');
@$core.Deprecated('Use playersStateDescriptor instead')
const PlayersState$json = const {
  '1': 'PlayersState',
  '2': const [
    const {'1': 'players', '3': 1, '4': 3, '5': 11, '6': '.PlayersState.PlayersEntry', '10': 'players'},
  ],
  '3': const [PlayersState_PlayersEntry$json],
};

@$core.Deprecated('Use playersStateDescriptor instead')
const PlayersState_PlayersEntry$json = const {
  '1': 'PlayersEntry',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 5, '10': 'key'},
    const {'1': 'value', '3': 2, '4': 1, '5': 11, '6': '.Player', '10': 'value'},
  ],
  '7': const {'7': true},
};

/// Descriptor for `PlayersState`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List playersStateDescriptor = $convert.base64Decode('CgxQbGF5ZXJzU3RhdGUSNAoHcGxheWVycxgBIAMoCzIaLlBsYXllcnNTdGF0ZS5QbGF5ZXJzRW50cnlSB3BsYXllcnMaQwoMUGxheWVyc0VudHJ5EhAKA2tleRgBIAEoBVIDa2V5Eh0KBXZhbHVlGAIgASgLMgcuUGxheWVyUgV2YWx1ZToCOAE=');
@$core.Deprecated('Use clientPacketDescriptor instead')
const ClientPacket$json = const {
  '1': 'ClientPacket',
  '2': const [
    const {'1': 'time', '3': 1, '4': 1, '5': 3, '10': 'time'},
    const {'1': 'type', '3': 2, '4': 1, '5': 14, '6': '.ClientPacketType', '10': 'type'},
    const {'1': 'movementInput', '3': 3, '4': 1, '5': 11, '6': '.MovementInput', '9': 0, '10': 'movementInput'},
  ],
  '8': const [
    const {'1': 'data'},
  ],
};

/// Descriptor for `ClientPacket`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List clientPacketDescriptor = $convert.base64Decode('CgxDbGllbnRQYWNrZXQSEgoEdGltZRgBIAEoA1IEdGltZRIlCgR0eXBlGAIgASgOMhEuQ2xpZW50UGFja2V0VHlwZVIEdHlwZRI2Cg1tb3ZlbWVudElucHV0GAMgASgLMg4uTW92ZW1lbnRJbnB1dEgAUg1tb3ZlbWVudElucHV0QgYKBGRhdGE=');
@$core.Deprecated('Use serverPacketDescriptor instead')
const ServerPacket$json = const {
  '1': 'ServerPacket',
  '2': const [
    const {'1': 'time', '3': 1, '4': 1, '5': 3, '10': 'time'},
    const {'1': 'type', '3': 2, '4': 1, '5': 14, '6': '.ServerPacketType', '10': 'type'},
    const {'1': 'players', '3': 3, '4': 1, '5': 11, '6': '.PlayersState', '9': 0, '10': 'players'},
    const {'1': 'id', '3': 4, '4': 1, '5': 5, '9': 0, '10': 'id'},
  ],
  '8': const [
    const {'1': 'data'},
  ],
};

/// Descriptor for `ServerPacket`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List serverPacketDescriptor = $convert.base64Decode('CgxTZXJ2ZXJQYWNrZXQSEgoEdGltZRgBIAEoA1IEdGltZRIlCgR0eXBlGAIgASgOMhEuU2VydmVyUGFja2V0VHlwZVIEdHlwZRIpCgdwbGF5ZXJzGAMgASgLMg0uUGxheWVyc1N0YXRlSABSB3BsYXllcnMSEAoCaWQYBCABKAVIAFICaWRCBgoEZGF0YQ==');
