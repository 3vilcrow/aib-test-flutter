// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sprites.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Sprites _$$_SpritesFromJson(Map<String, dynamic> json) => _$_Sprites(
      backDefault: json['back_default'] as String?,
      backShiny: json['back_shiny'] as String?,
      frontDefault: json['front_default'] as String?,
      frontShiny: json['front_shiny'] as String?,
      image: json['other'] == null
          ? null
          : PokemonImage.fromJson(json['other'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_SpritesToJson(_$_Sprites instance) =>
    <String, dynamic>{
      'back_default': instance.backDefault,
      'back_shiny': instance.backShiny,
      'front_default': instance.frontDefault,
      'front_shiny': instance.frontShiny,
      'other': instance.image?.toJson(),
    };
