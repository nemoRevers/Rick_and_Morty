import 'package:data/data.dart';
import 'package:flutter/material.dart';

class CharacterEpisodesWidget extends StatelessWidget {
  final List<EpisodeModel>? episodes;

  const CharacterEpisodesWidget({Key? key, this.episodes}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    assert(episodes != null || episodes!.isNotEmpty, 'No episodes available');
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: episodes!.map(
        (EpisodeModel episode) {
          return Padding(
            padding: const EdgeInsets.only(bottom: 4.0),
            child: Row(
              children: <Widget>[
                Text(episode.name ?? ''),
                Text(episode.formattedDate ?? ''),
              ],
            ),
          );
        },
      ).toList(),
    );
  }
}
