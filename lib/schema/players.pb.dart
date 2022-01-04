///
//  Generated code. Do not modify.
//  source: players.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

class Player extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Player', createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id')
    ..aOB(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'isMovingLeft', protoName: 'isMovingLeft')
    ..aOB(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'isMovingRight', protoName: 'isMovingRight')
    ..aOB(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'isMovingUp', protoName: 'isMovingUp')
    ..aOB(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'isMovingDown', protoName: 'isMovingDown')
    ..a<$core.double>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'x', $pb.PbFieldType.OD)
    ..a<$core.double>(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'y', $pb.PbFieldType.OD)
    ..aOS(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'direction')
    ..aOS(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'sprite')
    ..hasRequiredFields = false
  ;

  Player._() : super();
  factory Player({
    $core.String? id,
    $core.bool? isMovingLeft,
    $core.bool? isMovingRight,
    $core.bool? isMovingUp,
    $core.bool? isMovingDown,
    $core.double? x,
    $core.double? y,
    $core.String? direction,
    $core.String? sprite,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    if (isMovingLeft != null) {
      _result.isMovingLeft = isMovingLeft;
    }
    if (isMovingRight != null) {
      _result.isMovingRight = isMovingRight;
    }
    if (isMovingUp != null) {
      _result.isMovingUp = isMovingUp;
    }
    if (isMovingDown != null) {
      _result.isMovingDown = isMovingDown;
    }
    if (x != null) {
      _result.x = x;
    }
    if (y != null) {
      _result.y = y;
    }
    if (direction != null) {
      _result.direction = direction;
    }
    if (sprite != null) {
      _result.sprite = sprite;
    }
    return _result;
  }
  factory Player.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Player.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Player clone() => Player()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Player copyWith(void Function(Player) updates) => super.copyWith((message) => updates(message as Player)) as Player; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Player create() => Player._();
  Player createEmptyInstance() => create();
  static $pb.PbList<Player> createRepeated() => $pb.PbList<Player>();
  @$core.pragma('dart2js:noInline')
  static Player getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Player>(create);
  static Player? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.bool get isMovingLeft => $_getBF(1);
  @$pb.TagNumber(2)
  set isMovingLeft($core.bool v) { $_setBool(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasIsMovingLeft() => $_has(1);
  @$pb.TagNumber(2)
  void clearIsMovingLeft() => clearField(2);

  @$pb.TagNumber(3)
  $core.bool get isMovingRight => $_getBF(2);
  @$pb.TagNumber(3)
  set isMovingRight($core.bool v) { $_setBool(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasIsMovingRight() => $_has(2);
  @$pb.TagNumber(3)
  void clearIsMovingRight() => clearField(3);

  @$pb.TagNumber(4)
  $core.bool get isMovingUp => $_getBF(3);
  @$pb.TagNumber(4)
  set isMovingUp($core.bool v) { $_setBool(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasIsMovingUp() => $_has(3);
  @$pb.TagNumber(4)
  void clearIsMovingUp() => clearField(4);

  @$pb.TagNumber(5)
  $core.bool get isMovingDown => $_getBF(4);
  @$pb.TagNumber(5)
  set isMovingDown($core.bool v) { $_setBool(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasIsMovingDown() => $_has(4);
  @$pb.TagNumber(5)
  void clearIsMovingDown() => clearField(5);

  @$pb.TagNumber(6)
  $core.double get x => $_getN(5);
  @$pb.TagNumber(6)
  set x($core.double v) { $_setDouble(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasX() => $_has(5);
  @$pb.TagNumber(6)
  void clearX() => clearField(6);

  @$pb.TagNumber(7)
  $core.double get y => $_getN(6);
  @$pb.TagNumber(7)
  set y($core.double v) { $_setDouble(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasY() => $_has(6);
  @$pb.TagNumber(7)
  void clearY() => clearField(7);

  @$pb.TagNumber(8)
  $core.String get direction => $_getSZ(7);
  @$pb.TagNumber(8)
  set direction($core.String v) { $_setString(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasDirection() => $_has(7);
  @$pb.TagNumber(8)
  void clearDirection() => clearField(8);

  @$pb.TagNumber(9)
  $core.String get sprite => $_getSZ(8);
  @$pb.TagNumber(9)
  set sprite($core.String v) { $_setString(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasSprite() => $_has(8);
  @$pb.TagNumber(9)
  void clearSprite() => clearField(9);
}

class PlayerState extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'PlayerState', createEmptyInstance: create)
    ..aInt64(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'time')
    ..pc<Player>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'players', $pb.PbFieldType.PM, subBuilder: Player.create)
    ..hasRequiredFields = false
  ;

  PlayerState._() : super();
  factory PlayerState({
    $fixnum.Int64? time,
    $core.Iterable<Player>? players,
  }) {
    final _result = create();
    if (time != null) {
      _result.time = time;
    }
    if (players != null) {
      _result.players.addAll(players);
    }
    return _result;
  }
  factory PlayerState.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PlayerState.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PlayerState clone() => PlayerState()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PlayerState copyWith(void Function(PlayerState) updates) => super.copyWith((message) => updates(message as PlayerState)) as PlayerState; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static PlayerState create() => PlayerState._();
  PlayerState createEmptyInstance() => create();
  static $pb.PbList<PlayerState> createRepeated() => $pb.PbList<PlayerState>();
  @$core.pragma('dart2js:noInline')
  static PlayerState getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PlayerState>(create);
  static PlayerState? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get time => $_getI64(0);
  @$pb.TagNumber(1)
  set time($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasTime() => $_has(0);
  @$pb.TagNumber(1)
  void clearTime() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<Player> get players => $_getList(1);
}

