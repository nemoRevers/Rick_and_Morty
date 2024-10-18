import 'package:core/core.dart';

import '../../data.dart';
import '../models/models.dart';

///TODO to add isolates
class ApiProviderImpl implements ApiProvider {
  final Dio _dio;
  final ErrorHandler _errorHandler;

  ApiProviderImpl(Dio dio, ErrorHandler errorHandler)
      : _dio = dio,
        _errorHandler = errorHandler;

  @override
  Future<CharactersModel> fetchCharacters([int page = 1]) async {
    try {
      final Response<dynamic> response = await _dio.get(
        AppConstants.characters,
        queryParameters: <String, dynamic>{
          'page': page,
        },
      );

      return CharactersModel.fromJson(response.data);
    } on DioException catch (error) {
      throw _errorHandler.handleError(error);
    } catch (error) {
      rethrow;
    }
  }

  @override
  Future<CharacterModel> characterDetails(int id) async {
    try {
      final Response<dynamic> response =
          await _dio.get('${AppConstants.characters}/$id');

      return CharacterModel.fromJson(response.data);
    } on DioException catch (error) {
      throw _errorHandler.handleError(error);
    } catch (error) {
      rethrow;
    }
  }

  @override
  Future<EpisodeModel> episodeDetails(String id) async {
    try {
      final Response<dynamic> response =
          await _dio.get('${AppConstants.episode}/$id');

      return EpisodeModel.fromJson(response.data);
    } on DioException catch (error) {
      throw _errorHandler.handleError(error);
    } catch (error) {
      rethrow;
    }
  }
}
