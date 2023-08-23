// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pokemon_type_description.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PokemonTypeDescription _$PokemonTypeDescriptionFromJson(
    Map<String, dynamic> json) {
  return _PokemonTypeDescription.fromJson(json);
}

/// @nodoc
mixin _$PokemonTypeDescription {
  String? get name => throw _privateConstructorUsedError;
  String? get url => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PokemonTypeDescriptionCopyWith<PokemonTypeDescription> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokemonTypeDescriptionCopyWith<$Res> {
  factory $PokemonTypeDescriptionCopyWith(PokemonTypeDescription value,
          $Res Function(PokemonTypeDescription) then) =
      _$PokemonTypeDescriptionCopyWithImpl<$Res, PokemonTypeDescription>;
  @useResult
  $Res call({String? name, String? url});
}

/// @nodoc
class _$PokemonTypeDescriptionCopyWithImpl<$Res,
        $Val extends PokemonTypeDescription>
    implements $PokemonTypeDescriptionCopyWith<$Res> {
  _$PokemonTypeDescriptionCopyWithImpl(this._value, this._then);

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
abstract class _$$_PokemonTypeDescriptionCopyWith<$Res>
    implements $PokemonTypeDescriptionCopyWith<$Res> {
  factory _$$_PokemonTypeDescriptionCopyWith(_$_PokemonTypeDescription value,
          $Res Function(_$_PokemonTypeDescription) then) =
      __$$_PokemonTypeDescriptionCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? name, String? url});
}

/// @nodoc
class __$$_PokemonTypeDescriptionCopyWithImpl<$Res>
    extends _$PokemonTypeDescriptionCopyWithImpl<$Res,
        _$_PokemonTypeDescription>
    implements _$$_PokemonTypeDescriptionCopyWith<$Res> {
  __$$_PokemonTypeDescriptionCopyWithImpl(_$_PokemonTypeDescription _value,
      $Res Function(_$_PokemonTypeDescription) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? url = freezed,
  }) {
    return _then(_$_PokemonTypeDescription(
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
class _$_PokemonTypeDescription implements _PokemonTypeDescription {
  const _$_PokemonTypeDescription({this.name, this.url});

  factory _$_PokemonTypeDescription.fromJson(Map<String, dynamic> json) =>
      _$$_PokemonTypeDescriptionFromJson(json);

  @override
  final String? name;
  @override
  final String? url;

  @override
  String toString() {
    return 'PokemonTypeDescription(name: $name, url: $url)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PokemonTypeDescription &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, url);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PokemonTypeDescriptionCopyWith<_$_PokemonTypeDescription> get copyWith =>
      __$$_PokemonTypeDescriptionCopyWithImpl<_$_PokemonTypeDescription>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PokemonTypeDescriptionToJson(
      this,
    );
  }
}

abstract class _PokemonTypeDescription implements PokemonTypeDescription {
  const factory _PokemonTypeDescription(
      {final String? name, final String? url}) = _$_PokemonTypeDescription;

  factory _PokemonTypeDescription.fromJson(Map<String, dynamic> json) =
      _$_PokemonTypeDescription.fromJson;

  @override
  String? get name;
  @override
  String? get url;
  @override
  @JsonKey(ignore: true)
  _$$_PokemonTypeDescriptionCopyWith<_$_PokemonTypeDescription> get copyWith =>
      throw _privateConstructorUsedError;
}
