import 'package:core_ui/core_ui.dart';
import 'package:flutter/material.dart';

class CharacterCard extends StatelessWidget {
  final int? id;
  final String? name;
  final String? status;
  final String? species;
  final String? type;
  final String? gender;

  ///TODO: MAKE PRELOAD IMAGE
  final String? image;

  const CharacterCard({
    Key? key,
    required this.id,
    required this.name,
    required this.status,
    required this.species,
    required this.type,
    required this.gender,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      margin: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          image != null
              ? Image.network(
                  image!,
                  height: 200,
                  width: double.infinity,
                  fit: BoxFit.cover,
                )
              : const RickLogo(),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  name ?? 'Unknown',
                  style: const TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 5),
                Text(
                  'Status: ${status ?? 'Unknown'}',
                  style: const TextStyle(fontSize: 16),
                ),
                const SizedBox(height: 5),
                Text(
                  'Species: ${species ?? 'Unknown'}',
                  style: const TextStyle(fontSize: 16),
                ),
                const SizedBox(height: 5),
                Text(
                  'Type: ${type ?? 'Unknown'}',
                  style: const TextStyle(fontSize: 16),
                ),
                const SizedBox(height: 5),
                // Пол
                Text(
                  'Gender: ${gender ?? 'Unknown'}',
                  style: const TextStyle(fontSize: 16),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
