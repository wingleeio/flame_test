///
//  Generated code. Do not modify.
//  source: players.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use playerDescriptor instead')
const Player$json = const {
  '1': 'Player',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'isMovingLeft', '3': 2, '4': 1, '5': 8, '10': 'isMovingLeft'},
    const {'1': 'isMovingRight', '3': 3, '4': 1, '5': 8, '10': 'isMovingRight'},
    const {'1': 'isMovingUp', '3': 4, '4': 1, '5': 8, '10': 'isMovingUp'},
    const {'1': 'isMovingDown', '3': 5, '4': 1, '5': 8, '10': 'isMovingDown'},
    const {'1': 'x', '3': 6, '4': 1, '5': 1, '10': 'x'},
    const {'1': 'y', '3': 7, '4': 1, '5': 1, '10': 'y'},
    const {'1': 'direction', '3': 8, '4': 1, '5': 9, '10': 'direction'},
    const {'1': 'sprite', '3': 9, '4': 1, '5': 9, '10': 'sprite'},
  ],
};

/// Descriptor for `Player`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List playerDescriptor = $convert.base64Decode('CgZQbGF5ZXISDgoCaWQYASABKAlSAmlkEiIKDGlzTW92aW5nTGVmdBgCIAEoCFIMaXNNb3ZpbmdMZWZ0EiQKDWlzTW92aW5nUmlnaHQYAyABKAhSDWlzTW92aW5nUmlnaHQSHgoKaXNNb3ZpbmdVcBgEIAEoCFIKaXNNb3ZpbmdVcBIiCgxpc01vdmluZ0Rvd24YBSABKAhSDGlzTW92aW5nRG93bhIMCgF4GAYgASgBUgF4EgwKAXkYByABKAFSAXkSHAoJZGlyZWN0aW9uGAggASgJUglkaXJlY3Rpb24SFgoGc3ByaXRlGAkgASgJUgZzcHJpdGU=');
@$core.Deprecated('Use playerStateDescriptor instead')
const PlayerState$json = const {
  '1': 'PlayerState',
  '2': const [
    const {'1': 'time', '3': 1, '4': 1, '5': 3, '10': 'time'},
    const {'1': 'players', '3': 2, '4': 3, '5': 11, '6': '.Player', '10': 'players'},
  ],
};

/// Descriptor for `PlayerState`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List playerStateDescriptor = $convert.base64Decode('CgtQbGF5ZXJTdGF0ZRISCgR0aW1lGAEgASgDUgR0aW1lEiEKB3BsYXllcnMYAiADKAsyBy5QbGF5ZXJSB3BsYXllcnM=');
