import 'package:core_ui/core_ui.dart';
import 'package:flutter/material.dart';
import 'package:navigation/navigation.dart';

import '../../home_screen.dart';

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
    final BorderRadiusGeometry clipRadius =
        (Theme.of(context).cardTheme.shape as RoundedRectangleBorder?)
                ?.borderRadius ??
            BorderRadius.zero;

    return Card(
      elevation: 4,
      margin: const EdgeInsets.all(16),
      child: InkWell(
        onTap: () {
          if (id != null) {
            context.router.push(CharacterDetailsRoute(id: id!));
          }
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            image != null
                ? ClipRRect(
                    borderRadius: clipRadius,
                    child: Image.network(
                      image!,
                      height: 200,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                  )
                : const RickLogo(),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    name ?? 'Unknown',
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: AppColors.of(context).white),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    'Status: ${status ?? 'Unknown'}',
                    style: TextStyle(
                        fontSize: 16, color: AppColors.of(context).white),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    'Species: ${species ?? 'Unknown'}',
                    style: TextStyle(
                        fontSize: 16, color: AppColors.of(context).white),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    'Type: ${type ?? 'Unknown'}',
                    style: TextStyle(
                        fontSize: 16, color: AppColors.of(context).white),
                  ),
                  const SizedBox(height: 5),
                  // Пол
                  Text(
                    'Gender: ${gender ?? 'Unknown'}',
                    style: TextStyle(
                        fontSize: 16, color: AppColors.of(context).white),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
