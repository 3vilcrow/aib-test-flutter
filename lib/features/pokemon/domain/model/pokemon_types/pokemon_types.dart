import 'package:aib_test/features/pokemon/domain/model/pokemon_type.dart/pokemon_type.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'pokemon_types.freezed.dart';
part 'pokemon_types.g.dart';

@freezed
class PokemonTypes with _$PokemonTypes {
  const factory PokemonTypes({
    List<PokemonType>? types,
  }) = _PokemonTypes;

  factory PokemonTypes.fromJson(List<dynamic> json) =>
      _$PokemonTypesFromJson(json);
}
