import 'package:aib_test/features/pokemon/data/dto/get_ability/get_ability.dart';
import 'package:aib_test/features/pokemon/domain/model/pokemon_ability_description/pokemon_ability_description.dart';
import 'package:dartz/dartz.dart';
import 'package:aib_test/features/pokemon/data/dto/get_pokemon/get_pokemon.dart';
import 'package:aib_test/features/pokemon/data/dto/get_pokemons_list/get_pokemons_list.dart';
import 'package:aib_test/features/pokemon/domain/model/pokemon/pokemon.dart';

abstract class PokemonsRepository {
  Future<Either<void, List<Pokemon>>> getPokemonsList(
    GetPokemonsListRequestDTO request,
  );
  Future<Either<void, Pokemon?>> getPokemon(
    GetPokemonRequestDTO request,
  );
  Future<Either<void, PokemonAbilityDescription?>> getAbility(
    GetAbilityRequestDTO request,
  );
}
