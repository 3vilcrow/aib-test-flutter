// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pokemon_ability_description_effect_entries.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PokemonAbilityEffectEntries _$PokemonAbilityEffectEntriesFromJson(
    Map<String, dynamic> json) {
  return _PokemonAbilityEffectEntries.fromJson(json);
}

/// @nodoc
mixin _$PokemonAbilityEffectEntries {
  String? get effect => throw _privateConstructorUsedError;
  @JsonKey(name: 'short_effect')
  String? get shortEffect => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PokemonAbilityEffectEntriesCopyWith<PokemonAbilityEffectEntries>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokemonAbilityEffectEntriesCopyWith<$Res> {
  factory $PokemonAbilityEffectEntriesCopyWith(
          PokemonAbilityEffectEntries value,
          $Res Function(PokemonAbilityEffectEntries) then) =
      _$PokemonAbilityEffectEntriesCopyWithImpl<$Res,
          PokemonAbilityEffectEntries>;
  @useResult
  $Res call(
      {String? effect, @JsonKey(name: 'short_effect') String? shortEffect});
}

/// @nodoc
class _$PokemonAbilityEffectEntriesCopyWithImpl<$Res,
        $Val extends PokemonAbilityEffectEntries>
    implements $PokemonAbilityEffectEntriesCopyWith<$Res> {
  _$PokemonAbilityEffectEntriesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? effect = freezed,
    Object? shortEffect = freezed,
  }) {
    return _then(_value.copyWith(
      effect: freezed == effect
          ? _value.effect
          : effect // ignore: cast_nullable_to_non_nullable
              as String?,
      shortEffect: freezed == shortEffect
          ? _value.shortEffect
          : shortEffect // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PokemonAbilityEffectEntriesCopyWith<$Res>
    implements $PokemonAbilityEffectEntriesCopyWith<$Res> {
  factory _$$_PokemonAbilityEffectEntriesCopyWith(
          _$_PokemonAbilityEffectEntries value,
          $Res Function(_$_PokemonAbilityEffectEntries) then) =
      __$$_PokemonAbilityEffectEntriesCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? effect, @JsonKey(name: 'short_effect') String? shortEffect});
}

/// @nodoc
class __$$_PokemonAbilityEffectEntriesCopyWithImpl<$Res>
    extends _$PokemonAbilityEffectEntriesCopyWithImpl<$Res,
        _$_PokemonAbilityEffectEntries>
    implements _$$_PokemonAbilityEffectEntriesCopyWith<$Res> {
  __$$_PokemonAbilityEffectEntriesCopyWithImpl(
      _$_PokemonAbilityEffectEntries _value,
      $Res Function(_$_PokemonAbilityEffectEntries) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? effect = freezed,
    Object? shortEffect = freezed,
  }) {
    return _then(_$_PokemonAbilityEffectEntries(
      effect: freezed == effect
          ? _value.effect
          : effect // ignore: cast_nullable_to_non_nullable
              as String?,
      shortEffect: freezed == shortEffect
          ? _value.shortEffect
          : shortEffect // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PokemonAbilityEffectEntries implements _PokemonAbilityEffectEntries {
  const _$_PokemonAbilityEffectEntries(
      {this.effect, @JsonKey(name: 'short_effect') this.shortEffect});

  factory _$_PokemonAbilityEffectEntries.fromJson(Map<String, dynamic> json) =>
      _$$_PokemonAbilityEffectEntriesFromJson(json);

  @override
  final String? effect;
  @override
  @JsonKey(name: 'short_effect')
  final String? shortEffect;

  @override
  String toString() {
    return 'PokemonAbilityEffectEntries(effect: $effect, shortEffect: $shortEffect)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PokemonAbilityEffectEntries &&
            (identical(other.effect, effect) || other.effect == effect) &&
            (identical(other.shortEffect, shortEffect) ||
                other.shortEffect == shortEffect));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, effect, shortEffect);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PokemonAbilityEffectEntriesCopyWith<_$_PokemonAbilityEffectEntries>
      get copyWith => __$$_PokemonAbilityEffectEntriesCopyWithImpl<
          _$_PokemonAbilityEffectEntries>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PokemonAbilityEffectEntriesToJson(
      this,
    );
  }
}

abstract class _PokemonAbilityEffectEntries
    implements PokemonAbilityEffectEntries {
  const factory _PokemonAbilityEffectEntries(
          {final String? effect,
          @JsonKey(name: 'short_effect') final String? shortEffect}) =
      _$_PokemonAbilityEffectEntries;

  factory _PokemonAbilityEffectEntries.fromJson(Map<String, dynamic> json) =
      _$_PokemonAbilityEffectEntries.fromJson;

  @override
  String? get effect;
  @override
  @JsonKey(name: 'short_effect')
  String? get shortEffect;
  @override
  @JsonKey(ignore: true)
  _$$_PokemonAbilityEffectEntriesCopyWith<_$_PokemonAbilityEffectEntries>
      get copyWith => throw _privateConstructorUsedError;
}
