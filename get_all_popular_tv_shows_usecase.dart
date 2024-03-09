import 'package:moviesapp/core/data/error/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:moviesapp/core/domain/entities/media.dart';
import 'package:moviesapp/core/domain/usecase/base_use_case.dart';
import 'package:moviesapp/tv_shows/domain/repository/tv_shows_repository.dart';

class GetAllPopularTVShowsUseCase extends BaseUseCase<List<Media>, int> {
  final TVShowsRepository _baseTVShowsRepository;

  GetAllPopularTVShowsUseCase(this._baseTVShowsRepository);

  @override
  Future<Either<Failure, List<Media>>> call(int p) async {
    return await _baseTVShowsRepository.getAllPopularTVShows(p);
  }
}
