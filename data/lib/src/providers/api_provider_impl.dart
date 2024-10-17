import 'dart:convert';

import 'package:core/core.dart';

import '../entities/character/character.dart';
import '../entities/characters/characters.dart';

class ApiProvider {
  final Dio _dio;

  const ApiProvider(Dio dio) : _dio = dio;

  Future<Characters> fetchCharacters([int page = 1]) async {
    final Response<dynamic> response = await _dio
        .get('${AppConstants.baseUrl}${AppConstants.characters}?page=$page');

    final Map<String, dynamic> jsonData = json.decode(response.data);
    return Characters.fromJson(jsonData);
  }

  Future<Character> characterDetails(int id) async {
    final Response<dynamic> response =
        await _dio.get('${AppConstants.baseUrl}${AppConstants.characters}/$id');

    final Map<String, dynamic> jsonData = json.decode(response.data);
    return Character.fromJson(jsonData);
  }
}
