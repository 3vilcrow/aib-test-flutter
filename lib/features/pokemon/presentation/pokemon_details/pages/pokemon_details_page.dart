import 'package:aib_test/core/utils/enums/status.dart';
import 'package:aib_test/features/pokemon/presentation/pokemon_details/pages/arguments/pokemon_details_page_args.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:aib_test/features/pokemon/domain/model/pokemon/pokemon.dart';
import 'package:aib_test/features/pokemon/presentation/pokemon_details/cubit/pokemon_details_cubit.dart';
import 'package:aib_test/features/pokemon/presentation/pokemon_details/cubit/pokemon_details_state.dart';
import 'package:get/get.dart';

class PokemonDetails extends StatelessWidget {
  const PokemonDetails({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final arg = Get.arguments is PokemonDetailsPageArgs
        ? Get.arguments as PokemonDetailsPageArgs
        : null;
    final Pokemon? pokemon = arg?.pokemon;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Detail'),
        leading: IconButton(
          splashRadius: 20,
          onPressed: () => Navigator.pop(context),
          icon: const Icon(
            Icons.arrow_back_ios_new_rounded,
          ),
        ),
      ),
      body: BlocProvider(
        create: (context) => PokemonDetailsCubit(
          pokemon: pokemon,
        )..initiaize(),
        child: const PokemonDetailsContent(),
      ),
    );
  }
}

class PokemonDetailsContent extends StatelessWidget {
  const PokemonDetailsContent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PokemonDetailsCubit, PokemonDetailsState>(
      builder: (context, state) {
        if (state.status.isSuccess) {
          return Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              children: [
                const SizedBox(
                  height: 40,
                ),
                SizedBox(
                  height: 120,
                  width: 250,
                  child: CachedNetworkImage(
                    placeholder: (context, url) {
                      return const Padding(
                        padding: EdgeInsets.symmetric(
                          vertical: 10.0,
                          horizontal: 20,
                        ),
                        child: CircularProgressIndicator(
                          strokeWidth: 1,
                        ),
                      );
                    },
                    imageBuilder: (context, imageProvider) => Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: imageProvider,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    imageUrl: state.pokemon?.sprites?.frontShiny ?? '',
                  ),
                ),
                Text(
                  state.pokemon?.name?.capitalize ?? 'N/A',
                  style: const TextStyle(
                    fontSize: 32,
                    height: 1,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Text(
                  '#${(state.pokemon?.id ?? 0).toString().padLeft(4, '0')}',
                  style: const TextStyle(
                    fontSize: 16,
                    color: Color.fromRGBO(203, 203, 203, 1),
                  ),
                ),

                // Small Images
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                      height: 40,
                      width: 80,
                      child: CachedNetworkImage(
                        placeholder: (context, url) {
                          return const Padding(
                            padding: EdgeInsets.symmetric(
                              vertical: 10.0,
                              horizontal: 20,
                            ),
                            child: CircularProgressIndicator(
                              strokeWidth: 1,
                            ),
                          );
                        },
                        imageBuilder: (context, imageProvider) => Container(
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: imageProvider,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        imageUrl: state.pokemon?.sprites?.frontShiny ?? '',
                      ),
                    ),
                    SizedBox(
                      height: 40,
                      width: 80,
                      child: CachedNetworkImage(
                        placeholder: (context, url) {
                          return const Padding(
                            padding: EdgeInsets.symmetric(
                              vertical: 10.0,
                              horizontal: 20,
                            ),
                            child: CircularProgressIndicator(
                              strokeWidth: 1,
                            ),
                          );
                        },
                        imageBuilder: (context, imageProvider) => Container(
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: imageProvider,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        imageUrl: state.pokemon?.sprites?.frontDefault ?? '',
                      ),
                    ),
                    SizedBox(
                      height: 40,
                      width: 80,
                      child: CachedNetworkImage(
                        placeholder: (context, url) {
                          return const Padding(
                            padding: EdgeInsets.symmetric(
                              vertical: 10.0,
                              horizontal: 20,
                            ),
                            child: CircularProgressIndicator(
                              strokeWidth: 1,
                            ),
                          );
                        },
                        imageBuilder: (context, imageProvider) => Container(
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: imageProvider,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        imageUrl: state.pokemon?.sprites?.backShiny ?? '',
                      ),
                    ),
                    SizedBox(
                      height: 40,
                      width: 80,
                      child: CachedNetworkImage(
                        placeholder: (context, url) {
                          return const Padding(
                            padding: EdgeInsets.symmetric(
                              vertical: 10.0,
                              horizontal: 20,
                            ),
                            child: CircularProgressIndicator(
                              strokeWidth: 1,
                            ),
                          );
                        },
                        imageBuilder: (context, imageProvider) => Container(
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: imageProvider,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        imageUrl: state.pokemon?.sprites?.backDefault ?? '',
                      ),
                    ),
                  ],
                ),
              ],
            ),
          );
        }
        return const Center(child: CircularProgressIndicator());
      },
    );
  }
}
