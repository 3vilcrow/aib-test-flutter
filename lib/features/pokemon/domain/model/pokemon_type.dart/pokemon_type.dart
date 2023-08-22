import 'package:aib_test/features/pokemon/domain/model/pokemon_type_final.dart/pokemon_type_final.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'pokemon_type.freezed.dart';
part 'pokemon_type.g.dart';

@freezed
class PokemonType with _$PokemonType {
  const factory PokemonType({
    PokemonTypeFinal? type,
  }) = _PokemonType;

  factory PokemonType.fromJson(Map<String, dynamic> json) =>
      _$PokemonTypeFromJson(json);
}
