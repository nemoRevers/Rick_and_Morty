import 'package:core/core.dart';
import 'package:core_ui/core_ui.dart';
import 'package:data/data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:navigation/navigation.dart';

import '../mobx/characters_store.dart';
import '../widgets/character_card_widget.dart';

@RoutePage()
class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late final CharactersStore charactersStore;
  final ScrollController _scrollController = ScrollController();

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    charactersStore = Provider.of<CharactersStore>(context);
    charactersStore.loadCharacters();

    _scrollController.addListener(_onScroll);
  }

  void _onScroll() {
    if (_scrollController.position.pixels >=
        _scrollController.position.maxScrollExtent - 200) {
      charactersStore.loadCharacters();
    }
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const RickLogo(),
      ),
      body: Observer(
        builder: (BuildContext context) {
          if (charactersStore.characters.isEmpty && charactersStore.isLoading) {
            return const Center(child: CircularProgressIndicator());
          }

          return ListView.builder(
            controller: _scrollController,
            itemCount: charactersStore.characters.length + 1,
            itemBuilder: (BuildContext context, int index) {
              if (index == charactersStore.characters.length) {
                return charactersStore.isLoading
                    ? const Center(child: CircularProgressIndicator())
                    : const SizedBox.shrink();
              }

              final CharacterModel character =
                  charactersStore.characters[index];
              return Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16.0,
                  vertical: 8.0,
                ),
                child: CharacterCard(
                  id: character.id,
                  name: character.name,
                  status: character.status,
                  species: character.species,
                  type: character.type,
                  gender: character.gender,
                  image: character.image,
                ),
              );
            },
          );
        },
      ),
    );
  }
}
