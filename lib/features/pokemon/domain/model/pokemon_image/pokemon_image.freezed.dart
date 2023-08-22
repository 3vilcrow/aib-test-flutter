// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pokemon_image.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PokemonImage _$PokemonImageFromJson(Map<String, dynamic> json) {
  return _PokemonImage.fromJson(json);
}

/// @nodoc
mixin _$PokemonImage {
  @JsonKey(name: 'home')
  PokemonImageHome? get pokemonImageHome => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PokemonImageCopyWith<PokemonImage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokemonImageCopyWith<$Res> {
  factory $PokemonImageCopyWith(
          PokemonImage value, $Res Function(PokemonImage) then) =
      _$PokemonImageCopyWithImpl<$Res, PokemonImage>;
  @useResult
  $Res call({@JsonKey(name: 'home') PokemonImageHome? pokemonImageHome});

  $PokemonImageHomeCopyWith<$Res>? get pokemonImageHome;
}

/// @nodoc
class _$PokemonImageCopyWithImpl<$Res, $Val extends PokemonImage>
    implements $PokemonImageCopyWith<$Res> {
  _$PokemonImageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pokemonImageHome = freezed,
  }) {
    return _then(_value.copyWith(
      pokemonImageHome: freezed == pokemonImageHome
          ? _value.pokemonImageHome
          : pokemonImageHome // ignore: cast_nullable_to_non_nullable
              as PokemonImageHome?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PokemonImageHomeCopyWith<$Res>? get pokemonImageHome {
    if (_value.pokemonImageHome == null) {
      return null;
    }

    return $PokemonImageHomeCopyWith<$Res>(_value.pokemonImageHome!, (value) {
      return _then(_value.copyWith(pokemonImageHome: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_PokemonImageCopyWith<$Res>
    implements $PokemonImageCopyWith<$Res> {
  factory _$$_PokemonImageCopyWith(
          _$_PokemonImage value, $Res Function(_$_PokemonImage) then) =
      __$$_PokemonImageCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'home') PokemonImageHome? pokemonImageHome});

  @override
  $PokemonImageHomeCopyWith<$Res>? get pokemonImageHome;
}

/// @nodoc
class __$$_PokemonImageCopyWithImpl<$Res>
    extends _$PokemonImageCopyWithImpl<$Res, _$_PokemonImage>
    implements _$$_PokemonImageCopyWith<$Res> {
  __$$_PokemonImageCopyWithImpl(
      _$_PokemonImage _value, $Res Function(_$_PokemonImage) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pokemonImageHome = freezed,
  }) {
    return _then(_$_PokemonImage(
      pokemonImageHome: freezed == pokemonImageHome
          ? _value.pokemonImageHome
          : pokemonImageHome // ignore: cast_nullable_to_non_nullable
              as PokemonImageHome?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PokemonImage implements _PokemonImage {
  const _$_PokemonImage({@JsonKey(name: 'home') this.pokemonImageHome});

  factory _$_PokemonImage.fromJson(Map<String, dynamic> json) =>
      _$$_PokemonImageFromJson(json);

  @override
  @JsonKey(name: 'home')
  final PokemonImageHome? pokemonImageHome;

  @override
  String toString() {
    return 'PokemonImage(pokemonImageHome: $pokemonImageHome)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PokemonImage &&
            (identical(other.pokemonImageHome, pokemonImageHome) ||
                other.pokemonImageHome == pokemonImageHome));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, pokemonImageHome);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PokemonImageCopyWith<_$_PokemonImage> get copyWith =>
      __$$_PokemonImageCopyWithImpl<_$_PokemonImage>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PokemonImageToJson(
      this,
    );
  }
}

abstract class _PokemonImage implements PokemonImage {
  const factory _PokemonImage(
          {@JsonKey(name: 'home') final PokemonImageHome? pokemonImageHome}) =
      _$_PokemonImage;

  factory _PokemonImage.fromJson(Map<String, dynamic> json) =
      _$_PokemonImage.fromJson;

  @override
  @JsonKey(name: 'home')
  PokemonImageHome? get pokemonImageHome;
  @override
  @JsonKey(ignore: true)
  _$$_PokemonImageCopyWith<_$_PokemonImage> get copyWith =>
      throw _privateConstructorUsedError;
}
