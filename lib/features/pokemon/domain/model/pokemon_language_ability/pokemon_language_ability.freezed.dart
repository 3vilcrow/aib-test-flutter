// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pokemon_language_ability.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PokemonLanguageAbility _$PokemonLanguageAbilityFromJson(
    Map<String, dynamic> json) {
  return _PokemonLanguageAbility.fromJson(json);
}

/// @nodoc
mixin _$PokemonLanguageAbility {
  String? get name => throw _privateConstructorUsedError;
  String? get url => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PokemonLanguageAbilityCopyWith<PokemonLanguageAbility> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokemonLanguageAbilityCopyWith<$Res> {
  factory $PokemonLanguageAbilityCopyWith(PokemonLanguageAbility value,
          $Res Function(PokemonLanguageAbility) then) =
      _$PokemonLanguageAbilityCopyWithImpl<$Res, PokemonLanguageAbility>;
  @useResult
  $Res call({String? name, String? url});
}

/// @nodoc
class _$PokemonLanguageAbilityCopyWithImpl<$Res,
        $Val extends PokemonLanguageAbility>
    implements $PokemonLanguageAbilityCopyWith<$Res> {
  _$PokemonLanguageAbilityCopyWithImpl(this._value, this._then);

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
abstract class _$$_PokemonLanguageAbilityCopyWith<$Res>
    implements $PokemonLanguageAbilityCopyWith<$Res> {
  factory _$$_PokemonLanguageAbilityCopyWith(_$_PokemonLanguageAbility value,
          $Res Function(_$_PokemonLanguageAbility) then) =
      __$$_PokemonLanguageAbilityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? name, String? url});
}

/// @nodoc
class __$$_PokemonLanguageAbilityCopyWithImpl<$Res>
    extends _$PokemonLanguageAbilityCopyWithImpl<$Res,
        _$_PokemonLanguageAbility>
    implements _$$_PokemonLanguageAbilityCopyWith<$Res> {
  __$$_PokemonLanguageAbilityCopyWithImpl(_$_PokemonLanguageAbility _value,
      $Res Function(_$_PokemonLanguageAbility) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? url = freezed,
  }) {
    return _then(_$_PokemonLanguageAbility(
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
class _$_PokemonLanguageAbility implements _PokemonLanguageAbility {
  const _$_PokemonLanguageAbility({this.name, this.url});

  factory _$_PokemonLanguageAbility.fromJson(Map<String, dynamic> json) =>
      _$$_PokemonLanguageAbilityFromJson(json);

  @override
  final String? name;
  @override
  final String? url;

  @override
  String toString() {
    return 'PokemonLanguageAbility(name: $name, url: $url)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PokemonLanguageAbility &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, url);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PokemonLanguageAbilityCopyWith<_$_PokemonLanguageAbility> get copyWith =>
      __$$_PokemonLanguageAbilityCopyWithImpl<_$_PokemonLanguageAbility>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PokemonLanguageAbilityToJson(
      this,
    );
  }
}

abstract class _PokemonLanguageAbility implements PokemonLanguageAbility {
  const factory _PokemonLanguageAbility(
      {final String? name, final String? url}) = _$_PokemonLanguageAbility;

  factory _PokemonLanguageAbility.fromJson(Map<String, dynamic> json) =
      _$_PokemonLanguageAbility.fromJson;

  @override
  String? get name;
  @override
  String? get url;
  @override
  @JsonKey(ignore: true)
  _$$_PokemonLanguageAbilityCopyWith<_$_PokemonLanguageAbility> get copyWith =>
      throw _privateConstructorUsedError;
}
