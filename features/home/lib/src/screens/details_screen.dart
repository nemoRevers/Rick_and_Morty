import 'package:core/core.dart';
import 'package:core_ui/core_ui.dart';
import 'package:data/data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:navigation/navigation.dart';

import '../mobx/character_details_store.dart';
import '../widgets/character_episode_widget.dart';
import '../widgets/character_image_widget.dart';
import '../widgets/character_info_widget.dart';

@RoutePage()
class CharacterDetailsScreen extends StatefulWidget {
  final int id;

  const CharacterDetailsScreen({super.key, required this.id});

  @override
  _CharacterDetailsScreenState createState() => _CharacterDetailsScreenState();
}

class _CharacterDetailsScreenState extends State<CharacterDetailsScreen> {
  late final CharacterDetailsStore characterDetailsStore;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    characterDetailsStore = Provider.of<CharacterDetailsStore>(context);

    characterDetailsStore.loadCharacterDetails(
      widget.id,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const RickLogo(),
      ),
      body: Observer(
        builder: (_) {
          if (characterDetailsStore.isLoading) {
            return const Center(child: CircularProgressIndicator());
          }

          if (characterDetailsStore.errorMessage != null) {
            return Center(child: Text(characterDetailsStore.errorMessage!));
          }

          final CharacterModel? character = characterDetailsStore.character;
          final List<EpisodeModel>? episodes = characterDetailsStore.episodes;

          if (character == null) {
            return const Center(child: Text('Character not found'));
          }

          return SingleChildScrollView(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                CharacterImageWidget(imageUrl: character.image),
                const SizedBox(height: 20),
                Text(
                  character.name ?? 'Unknown',
                  style: Theme.of(context).textTheme.displayMedium,
                ),
                const SizedBox(height: 10),
                CharacterInfoWidget(label: 'Status', value: character.status),
                CharacterInfoWidget(label: 'Species', value: character.species),
                CharacterInfoWidget(
                  label: 'Type',
                  value: character.type ?? 'N/A',
                ),
                CharacterInfoWidget(label: 'Gender', value: character.gender),
                CharacterInfoWidget(
                  label: 'Origin',
                  value: character.origin?.name ?? 'Unknown',
                ),
                CharacterInfoWidget(
                    label: 'Location',
                    value: character.location?.name ?? 'Unknown'),
                const SizedBox(height: 20),
                const Text(
                  'Episodes:',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 10),
                CharacterEpisodesWidget(episodes: episodes),
                const SizedBox(height: 20),
                CharacterInfoWidget(
                  label: 'Created',
                  value: character.formattedDate,
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
