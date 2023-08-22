// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pokemon_types.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PokemonTypes _$PokemonTypesFromJson(List<dynamic> json) {
  return _PokemonTypes.fromJson(json);
}

/// @nodoc
mixin _$PokemonTypes {
  List<PokemonType>? get types => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PokemonTypesCopyWith<PokemonTypes> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokemonTypesCopyWith<$Res> {
  factory $PokemonTypesCopyWith(
          PokemonTypes value, $Res Function(PokemonTypes) then) =
      _$PokemonTypesCopyWithImpl<$Res, PokemonTypes>;
  @useResult
  $Res call({List<PokemonType>? types});
}

/// @nodoc
class _$PokemonTypesCopyWithImpl<$Res, $Val extends PokemonTypes>
    implements $PokemonTypesCopyWith<$Res> {
  _$PokemonTypesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? types = freezed,
  }) {
    return _then(_value.copyWith(
      types: freezed == types
          ? _value.types
          : types // ignore: cast_nullable_to_non_nullable
              as List<PokemonType>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PokemonTypesCopyWith<$Res>
    implements $PokemonTypesCopyWith<$Res> {
  factory _$$_PokemonTypesCopyWith(
          _$_PokemonTypes value, $Res Function(_$_PokemonTypes) then) =
      __$$_PokemonTypesCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<PokemonType>? types});
}

/// @nodoc
class __$$_PokemonTypesCopyWithImpl<$Res>
    extends _$PokemonTypesCopyWithImpl<$Res, _$_PokemonTypes>
    implements _$$_PokemonTypesCopyWith<$Res> {
  __$$_PokemonTypesCopyWithImpl(
      _$_PokemonTypes _value, $Res Function(_$_PokemonTypes) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? types = freezed,
  }) {
    return _then(_$_PokemonTypes(
      types: freezed == types
          ? _value._types
          : types // ignore: cast_nullable_to_non_nullable
              as List<PokemonType>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PokemonTypes implements _PokemonTypes {
  const _$_PokemonTypes({final List<PokemonType>? types}) : _types = types;

  factory _$_PokemonTypes.fromJson(List<dynamic> json) =>
      _$$_PokemonTypesFromJson(json);

  final List<PokemonType>? _types;
  @override
  List<PokemonType>? get types {
    final value = _types;
    if (value == null) return null;
    if (_types is EqualUnmodifiableListView) return _types;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'PokemonTypes(types: $types)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PokemonTypes &&
            const DeepCollectionEquality().equals(other._types, _types));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_types));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PokemonTypesCopyWith<_$_PokemonTypes> get copyWith =>
      __$$_PokemonTypesCopyWithImpl<_$_PokemonTypes>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PokemonTypesToJson(
      this,
    );
  }
}

abstract class _PokemonTypes implements PokemonTypes {
  const factory _PokemonTypes({final List<PokemonType>? types}) =
      _$_PokemonTypes;

  factory _PokemonTypes.fromJson(List<dynamic> json) = _$_PokemonTypes.fromJson;

  @override
  List<PokemonType>? get types;
  @override
  @JsonKey(ignore: true)
  _$$_PokemonTypesCopyWith<_$_PokemonTypes> get copyWith =>
      throw _privateConstructorUsedError;
}
