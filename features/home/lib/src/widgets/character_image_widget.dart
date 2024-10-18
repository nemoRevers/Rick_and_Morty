import 'package:flutter/material.dart';

class CharacterImageWidget extends StatelessWidget {
  final String? imageUrl;

  const CharacterImageWidget({Key? key, this.imageUrl}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Image.network(
        imageUrl ?? '',
        height: 300,
        fit: BoxFit.cover,
        errorBuilder: (
          BuildContext context,
          Object error,
          StackTrace? stackTrace,
        ) =>
            const Icon(Icons.error),
      ),
    );
  }
}
