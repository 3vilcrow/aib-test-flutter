// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pokemon_type_final.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PokemonTypeFinal _$PokemonTypeFinalFromJson(Map<String, dynamic> json) {
  return _PokemonTypeFinal.fromJson(json);
}

/// @nodoc
mixin _$PokemonTypeFinal {
  String? get name => throw _privateConstructorUsedError;
  String? get url => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PokemonTypeFinalCopyWith<PokemonTypeFinal> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokemonTypeFinalCopyWith<$Res> {
  factory $PokemonTypeFinalCopyWith(
          PokemonTypeFinal value, $Res Function(PokemonTypeFinal) then) =
      _$PokemonTypeFinalCopyWithImpl<$Res, PokemonTypeFinal>;
  @useResult
  $Res call({String? name, String? url});
}

/// @nodoc
class _$PokemonTypeFinalCopyWithImpl<$Res, $Val extends PokemonTypeFinal>
    implements $PokemonTypeFinalCopyWith<$Res> {
  _$PokemonTypeFinalCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? url = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PokemonTypeFinalCopyWith<$Res>
    implements $PokemonTypeFinalCopyWith<$Res> {
  factory _$$_PokemonTypeFinalCopyWith(
          _$_PokemonTypeFinal value, $Res Function(_$_PokemonTypeFinal) then) =
      __$$_PokemonTypeFinalCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? name, String? url});
}

/// @nodoc
class __$$_PokemonTypeFinalCopyWithImpl<$Res>
    extends _$PokemonTypeFinalCopyWithImpl<$Res, _$_PokemonTypeFinal>
    implements _$$_PokemonTypeFinalCopyWith<$Res> {
  __$$_PokemonTypeFinalCopyWithImpl(
      _$_PokemonTypeFinal _value, $Res Function(_$_PokemonTypeFinal) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? url = freezed,
  }) {
    return _then(_$_PokemonTypeFinal(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PokemonTypeFinal implements _PokemonTypeFinal {
  const _$_PokemonTypeFinal({this.name, this.url});

  factory _$_PokemonTypeFinal.fromJson(Map<String, dynamic> json) =>
      _$$_PokemonTypeFinalFromJson(json);

  @override
  final String? name;
  @override
  final String? url;

  @override
  String toString() {
    return 'PokemonTypeFinal(name: $name, url: $url)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PokemonTypeFinal &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, url);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PokemonTypeFinalCopyWith<_$_PokemonTypeFinal> get copyWith =>
      __$$_PokemonTypeFinalCopyWithImpl<_$_PokemonTypeFinal>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PokemonTypeFinalToJson(
      this,
    );
  }
}

abstract class _PokemonTypeFinal implements PokemonTypeFinal {
  const factory _PokemonTypeFinal({final String? name, final String? url}) =
      _$_PokemonTypeFinal;

  factory _PokemonTypeFinal.fromJson(Map<String, dynamic> json) =
      _$_PokemonTypeFinal.fromJson;

  @override
  String? get name;
  @override
  String? get url;
  @override
  @JsonKey(ignore: true)
  _$$_PokemonTypeFinalCopyWith<_$_PokemonTypeFinal> get copyWith =>
      throw _privateConstructorUsedError;
}
