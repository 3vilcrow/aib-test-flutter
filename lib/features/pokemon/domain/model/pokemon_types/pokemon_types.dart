import 'package:freezed_annotation/freezed_annotation.dart';

part 'pokemon_types.freezed.dart';
part 'pokemon_types.g.dart';

@freezed
class PokemonTypes with _$PokemonTypes {
  const factory PokemonTypes({
    List<String>? types,
  }) = _PokemonTypes;

  factory PokemonTypes.fromJson(Map<String, dynamic> json) =>
      _$PokemonTypesFromJson(json);
}
