// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pokemon_abilities.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PokemonAbilities _$PokemonAbilitiesFromJson(Map<String, dynamic> json) {
  return _PokemonAbilities.fromJson(json);
}

/// @nodoc
mixin _$PokemonAbilities {
  PokemonAbilityDescription? get ability => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PokemonAbilitiesCopyWith<PokemonAbilities> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokemonAbilitiesCopyWith<$Res> {
  factory $PokemonAbilitiesCopyWith(
          PokemonAbilities value, $Res Function(PokemonAbilities) then) =
      _$PokemonAbilitiesCopyWithImpl<$Res, PokemonAbilities>;
  @useResult
  $Res call({PokemonAbilityDescription? ability});

  $PokemonAbilityDescriptionCopyWith<$Res>? get ability;
}

/// @nodoc
class _$PokemonAbilitiesCopyWithImpl<$Res, $Val extends PokemonAbilities>
    implements $PokemonAbilitiesCopyWith<$Res> {
  _$PokemonAbilitiesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ability = freezed,
  }) {
    return _then(_value.copyWith(
      ability: freezed == ability
          ? _value.ability
          : ability // ignore: cast_nullable_to_non_nullable
              as PokemonAbilityDescription?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PokemonAbilityDescriptionCopyWith<$Res>? get ability {
    if (_value.ability == null) {
      return null;
    }

    return $PokemonAbilityDescriptionCopyWith<$Res>(_value.ability!, (value) {
      return _then(_value.copyWith(ability: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_PokemonAbilitiesCopyWith<$Res>
    implements $PokemonAbilitiesCopyWith<$Res> {
  factory _$$_PokemonAbilitiesCopyWith(
          _$_PokemonAbilities value, $Res Function(_$_PokemonAbilities) then) =
      __$$_PokemonAbilitiesCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({PokemonAbilityDescription? ability});

  @override
  $PokemonAbilityDescriptionCopyWith<$Res>? get ability;
}

/// @nodoc
class __$$_PokemonAbilitiesCopyWithImpl<$Res>
    extends _$PokemonAbilitiesCopyWithImpl<$Res, _$_PokemonAbilities>
    implements _$$_PokemonAbilitiesCopyWith<$Res> {
  __$$_PokemonAbilitiesCopyWithImpl(
      _$_PokemonAbilities _value, $Res Function(_$_PokemonAbilities) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ability = freezed,
  }) {
    return _then(_$_PokemonAbilities(
      ability: freezed == ability
          ? _value.ability
          : ability // ignore: cast_nullable_to_non_nullable
              as PokemonAbilityDescription?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PokemonAbilities implements _PokemonAbilities {
  const _$_PokemonAbilities({this.ability});

  factory _$_PokemonAbilities.fromJson(Map<String, dynamic> json) =>
      _$$_PokemonAbilitiesFromJson(json);

  @override
  final PokemonAbilityDescription? ability;

  @override
  String toString() {
    return 'PokemonAbilities(ability: $ability)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PokemonAbilities &&
            (identical(other.ability, ability) || other.ability == ability));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, ability);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PokemonAbilitiesCopyWith<_$_PokemonAbilities> get copyWith =>
      __$$_PokemonAbilitiesCopyWithImpl<_$_PokemonAbilities>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PokemonAbilitiesToJson(
      this,
    );
  }
}

abstract class _PokemonAbilities implements PokemonAbilities {
  const factory _PokemonAbilities({final PokemonAbilityDescription? ability}) =
      _$_PokemonAbilities;

  factory _PokemonAbilities.fromJson(Map<String, dynamic> json) =
      _$_PokemonAbilities.fromJson;

  @override
  PokemonAbilityDescription? get ability;
  @override
  @JsonKey(ignore: true)
  _$$_PokemonAbilitiesCopyWith<_$_PokemonAbilities> get copyWith =>
      throw _privateConstructorUsedError;
}
