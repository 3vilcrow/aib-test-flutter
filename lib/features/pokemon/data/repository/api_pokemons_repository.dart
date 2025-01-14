import 'package:aib_test/features/pokemon/data/dto/get_ability/get_ability.dart';
import 'package:aib_test/features/pokemon/domain/model/pokemon_ability_description/pokemon_ability_description.dart';
import 'package:dartz/dartz.dart';
import 'package:aib_test/core/http/endpoints.dart';
import 'package:aib_test/core/http/http_service.dart';
import 'package:aib_test/features/pokemon/data/dto/get_pokemon/get_pokemon.dart';
import 'package:aib_test/features/pokemon/data/dto/get_pokemons_list/get_pokemons_list.dart';
import 'package:aib_test/features/pokemon/domain/model/pokemon/pokemon.dart';
import 'package:aib_test/features/pokemon/domain/repository/pokemons_repository.dart';

class ApiPokemonsRepository extends PokemonsRepository {
  ApiPokemonsRepository({
    required HttpService httpServer,
  }) : _httpServer = httpServer;
  final HttpService _httpServer;

  @override
  Future<Either<void, List<Pokemon>>> getPokemonsList(
    GetPokemonsListRequestDTO request,
  ) async {
    try {
      final resp = await _httpServer.get(
        endpoint: Endpoints.baseUrl + Endpoints.pokemons,
        arguments: request.toJson(),
      );

      GetPokemonsListResponseDTO response =
          GetPokemonsListResponseDTO.fromJson(resp.data);

      return Right(response.results ?? []);
    } catch (_) {
      return const Left(null);
    }
  }

  @override
  Future<Either<void, Pokemon?>> getPokemon(
    GetPokemonRequestDTO request,
  ) async {
    try {
      final resp = await _httpServer.get(
        endpoint: request.url,
      );

      Pokemon response = Pokemon.fromJson(resp.data);

      return Right(response);
    } catch (_) {
      return const Left(null);
    }
  }

  @override
  Future<Either<void, PokemonAbilityDescription?>> getAbility(
    GetAbilityRequestDTO request,
  ) async {
    try {
      final resp = await _httpServer.get(
        endpoint: request.url,
      );

      PokemonAbilityDescription response =
          PokemonAbilityDescription.fromJson(resp.data);

      return Right(response);
    } catch (_) {
      return const Left(null);
    }
  }
}
