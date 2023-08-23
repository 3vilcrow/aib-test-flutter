// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pokemon_ability_description.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PokemonAbilityDescription _$PokemonAbilityDescriptionFromJson(
    Map<String, dynamic> json) {
  return _PokemonAbilityDescription.fromJson(json);
}

/// @nodoc
mixin _$PokemonAbilityDescription {
  String? get name => throw _privateConstructorUsedError;
  String? get url => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PokemonAbilityDescriptionCopyWith<PokemonAbilityDescription> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokemonAbilityDescriptionCopyWith<$Res> {
  factory $PokemonAbilityDescriptionCopyWith(PokemonAbilityDescription value,
          $Res Function(PokemonAbilityDescription) then) =
      _$PokemonAbilityDescriptionCopyWithImpl<$Res, PokemonAbilityDescription>;
  @useResult
  $Res call({String? name, String? url});
}

/// @nodoc
class _$PokemonAbilityDescriptionCopyWithImpl<$Res,
        $Val extends PokemonAbilityDescription>
    implements $PokemonAbilityDescriptionCopyWith<$Res> {
  _$PokemonAbilityDescriptionCopyWithImpl(this._value, this._then);

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
abstract class _$$_PokemonAbilityDescriptionCopyWith<$Res>
    implements $PokemonAbilityDescriptionCopyWith<$Res> {
  factory _$$_PokemonAbilityDescriptionCopyWith(
          _$_PokemonAbilityDescription value,
          $Res Function(_$_PokemonAbilityDescription) then) =
      __$$_PokemonAbilityDescriptionCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? name, String? url});
}

/// @nodoc
class __$$_PokemonAbilityDescriptionCopyWithImpl<$Res>
    extends _$PokemonAbilityDescriptionCopyWithImpl<$Res,
        _$_PokemonAbilityDescription>
    implements _$$_PokemonAbilityDescriptionCopyWith<$Res> {
  __$$_PokemonAbilityDescriptionCopyWithImpl(
      _$_PokemonAbilityDescription _value,
      $Res Function(_$_PokemonAbilityDescription) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? url = freezed,
  }) {
    return _then(_$_PokemonAbilityDescription(
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
class _$_PokemonAbilityDescription implements _PokemonAbilityDescription {
  const _$_PokemonAbilityDescription({this.name, this.url});

  factory _$_PokemonAbilityDescription.fromJson(Map<String, dynamic> json) =>
      _$$_PokemonAbilityDescriptionFromJson(json);

  @override
  final String? name;
  @override
  final String? url;

  @override
  String toString() {
    return 'PokemonAbilityDescription(name: $name, url: $url)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PokemonAbilityDescription &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, url);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PokemonAbilityDescriptionCopyWith<_$_PokemonAbilityDescription>
      get copyWith => __$$_PokemonAbilityDescriptionCopyWithImpl<
          _$_PokemonAbilityDescription>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PokemonAbilityDescriptionToJson(
      this,
    );
  }
}

abstract class _PokemonAbilityDescription implements PokemonAbilityDescription {
  const factory _PokemonAbilityDescription(
      {final String? name, final String? url}) = _$_PokemonAbilityDescription;

  factory _PokemonAbilityDescription.fromJson(Map<String, dynamic> json) =
      _$_PokemonAbilityDescription.fromJson;

  @override
  String? get name;
  @override
  String? get url;
  @override
  @JsonKey(ignore: true)
  _$$_PokemonAbilityDescriptionCopyWith<_$_PokemonAbilityDescription>
      get copyWith => throw _privateConstructorUsedError;
}
