// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pokemon_type.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PokemonType _$PokemonTypeFromJson(Map<String, dynamic> json) {
  return _PokemonType.fromJson(json);
}

/// @nodoc
mixin _$PokemonType {
  PokemonTypeDescription? get type => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PokemonTypeCopyWith<PokemonType> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokemonTypeCopyWith<$Res> {
  factory $PokemonTypeCopyWith(
          PokemonType value, $Res Function(PokemonType) then) =
      _$PokemonTypeCopyWithImpl<$Res, PokemonType>;
  @useResult
  $Res call({PokemonTypeDescription? type});

  $PokemonTypeDescriptionCopyWith<$Res>? get type;
}

/// @nodoc
class _$PokemonTypeCopyWithImpl<$Res, $Val extends PokemonType>
    implements $PokemonTypeCopyWith<$Res> {
  _$PokemonTypeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = freezed,
  }) {
    return _then(_value.copyWith(
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as PokemonTypeDescription?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PokemonTypeDescriptionCopyWith<$Res>? get type {
    if (_value.type == null) {
      return null;
    }

    return $PokemonTypeDescriptionCopyWith<$Res>(_value.type!, (value) {
      return _then(_value.copyWith(type: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_PokemonTypeCopyWith<$Res>
    implements $PokemonTypeCopyWith<$Res> {
  factory _$$_PokemonTypeCopyWith(
          _$_PokemonType value, $Res Function(_$_PokemonType) then) =
      __$$_PokemonTypeCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({PokemonTypeDescription? type});

  @override
  $PokemonTypeDescriptionCopyWith<$Res>? get type;
}

/// @nodoc
class __$$_PokemonTypeCopyWithImpl<$Res>
    extends _$PokemonTypeCopyWithImpl<$Res, _$_PokemonType>
    implements _$$_PokemonTypeCopyWith<$Res> {
  __$$_PokemonTypeCopyWithImpl(
      _$_PokemonType _value, $Res Function(_$_PokemonType) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = freezed,
  }) {
    return _then(_$_PokemonType(
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as PokemonTypeDescription?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PokemonType implements _PokemonType {
  const _$_PokemonType({this.type});

  factory _$_PokemonType.fromJson(Map<String, dynamic> json) =>
      _$$_PokemonTypeFromJson(json);

  @override
  final PokemonTypeDescription? type;

  @override
  String toString() {
    return 'PokemonType(type: $type)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PokemonType &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, type);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PokemonTypeCopyWith<_$_PokemonType> get copyWith =>
      __$$_PokemonTypeCopyWithImpl<_$_PokemonType>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PokemonTypeToJson(
      this,
    );
  }
}

abstract class _PokemonType implements PokemonType {
  const factory _PokemonType({final PokemonTypeDescription? type}) =
      _$_PokemonType;

  factory _PokemonType.fromJson(Map<String, dynamic> json) =
      _$_PokemonType.fromJson;

  @override
  PokemonTypeDescription? get type;
  @override
  @JsonKey(ignore: true)
  _$$_PokemonTypeCopyWith<_$_PokemonType> get copyWith =>
      throw _privateConstructorUsedError;
}
