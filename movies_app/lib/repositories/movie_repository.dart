/* servirá para se conectar na API do TMDb utilizando
dio e converter a resposta em
JSON para um objeto (model).
*/

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import 'package:moviesapp/core/api.dart';
import 'package:moviesapp/errors/movie_error.dart';
import 'package:moviesapp/models/movie_detail_model.dart';
import 'package:moviesapp/models/movie_response_model.dart';

class MovieRepository {
  final Dio _dio = Dio(kDioOptions);

  Future<Either<MovieError, MovieResponseModel>> fetchAllMovies(
      int page) async {
    try {
      final reponse =
          await _dio.get('/movie/popular?&language=pt-br&page=$page&region=BR');
      final model = MovieResponseModel.fromMap(reponse.data);
      return Right(model);
    } on DioError catch (error) {
      if (error.response != null) {
        return Left(
            MovieRepositoryError(error.response?.data['status_message']));
      } else {
        return Left(MovieRepositoryError(kServerError));
      }
    } on Exception catch (error) {
      return Left(MovieRepositoryError(error.toString()));
    }
  }

  Future<Either<MovieError, MovieDetail>> fetchMovieById(int id) async {
    try {
      final response = await _dio.get('/movie/$id?&language=pt-br');
      final model = MovieDetail.fromMap(response.data);
      return Right(model);
    } on DioError catch (error) {
      if (error.response != null) {
        return Left(
            MovieRepositoryError(error.response?.data['status_message']));
      } else {
        return Left(MovieRepositoryError(kServerError));
      }
    } on Exception catch (error) {
      return Left(MovieRepositoryError(error.toString()));
    }
  }
}
