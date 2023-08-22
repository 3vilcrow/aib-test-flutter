// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pokemon_image_home.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PokemonImageHome _$PokemonImageHomeFromJson(Map<String, dynamic> json) {
  return _PokemonImageHome.fromJson(json);
}

/// @nodoc
mixin _$PokemonImageHome {
  @JsonKey(name: 'front_default')
  String? get frontDefault => throw _privateConstructorUsedError;
  @JsonKey(name: 'front_shiny')
  String? get frontShiny => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PokemonImageHomeCopyWith<PokemonImageHome> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokemonImageHomeCopyWith<$Res> {
  factory $PokemonImageHomeCopyWith(
          PokemonImageHome value, $Res Function(PokemonImageHome) then) =
      _$PokemonImageHomeCopyWithImpl<$Res, PokemonImageHome>;
  @useResult
  $Res call(
      {@JsonKey(name: 'front_default') String? frontDefault,
      @JsonKey(name: 'front_shiny') String? frontShiny});
}

/// @nodoc
class _$PokemonImageHomeCopyWithImpl<$Res, $Val extends PokemonImageHome>
    implements $PokemonImageHomeCopyWith<$Res> {
  _$PokemonImageHomeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? frontDefault = freezed,
    Object? frontShiny = freezed,
  }) {
    return _then(_value.copyWith(
      frontDefault: freezed == frontDefault
          ? _value.frontDefault
          : frontDefault // ignore: cast_nullable_to_non_nullable
              as String?,
      frontShiny: freezed == frontShiny
          ? _value.frontShiny
          : frontShiny // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PokemonImageHomeCopyWith<$Res>
    implements $PokemonImageHomeCopyWith<$Res> {
  factory _$$_PokemonImageHomeCopyWith(
          _$_PokemonImageHome value, $Res Function(_$_PokemonImageHome) then) =
      __$$_PokemonImageHomeCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'front_default') String? frontDefault,
      @JsonKey(name: 'front_shiny') String? frontShiny});
}

/// @nodoc
class __$$_PokemonImageHomeCopyWithImpl<$Res>
    extends _$PokemonImageHomeCopyWithImpl<$Res, _$_PokemonImageHome>
    implements _$$_PokemonImageHomeCopyWith<$Res> {
  __$$_PokemonImageHomeCopyWithImpl(
      _$_PokemonImageHome _value, $Res Function(_$_PokemonImageHome) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? frontDefault = freezed,
    Object? frontShiny = freezed,
  }) {
    return _then(_$_PokemonImageHome(
      frontDefault: freezed == frontDefault
          ? _value.frontDefault
          : frontDefault // ignore: cast_nullable_to_non_nullable
              as String?,
      frontShiny: freezed == frontShiny
          ? _value.frontShiny
          : frontShiny // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PokemonImageHome implements _PokemonImageHome {
  const _$_PokemonImageHome(
      {@JsonKey(name: 'front_default') this.frontDefault,
      @JsonKey(name: 'front_shiny') this.frontShiny});

  factory _$_PokemonImageHome.fromJson(Map<String, dynamic> json) =>
      _$$_PokemonImageHomeFromJson(json);

  @override
  @JsonKey(name: 'front_default')
  final String? frontDefault;
  @override
  @JsonKey(name: 'front_shiny')
  final String? frontShiny;

  @override
  String toString() {
    return 'PokemonImageHome(frontDefault: $frontDefault, frontShiny: $frontShiny)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PokemonImageHome &&
            (identical(other.frontDefault, frontDefault) ||
                other.frontDefault == frontDefault) &&
            (identical(other.frontShiny, frontShiny) ||
                other.frontShiny == frontShiny));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, frontDefault, frontShiny);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PokemonImageHomeCopyWith<_$_PokemonImageHome> get copyWith =>
      __$$_PokemonImageHomeCopyWithImpl<_$_PokemonImageHome>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PokemonImageHomeToJson(
      this,
    );
  }
}

abstract class _PokemonImageHome implements PokemonImageHome {
  const factory _PokemonImageHome(
          {@JsonKey(name: 'front_default') final String? frontDefault,
          @JsonKey(name: 'front_shiny') final String? frontShiny}) =
      _$_PokemonImageHome;

  factory _PokemonImageHome.fromJson(Map<String, dynamic> json) =
      _$_PokemonImageHome.fromJson;

  @override
  @JsonKey(name: 'front_default')
  String? get frontDefault;
  @override
  @JsonKey(name: 'front_shiny')
  String? get frontShiny;
  @override
  @JsonKey(ignore: true)
  _$$_PokemonImageHomeCopyWith<_$_PokemonImageHome> get copyWith =>
      throw _privateConstructorUsedError;
}
