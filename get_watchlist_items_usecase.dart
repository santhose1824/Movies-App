import 'package:moviesapp/core/data/error/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:moviesapp/core/domain/entities/media.dart';
import 'package:moviesapp/core/domain/usecase/base_use_case.dart';
import 'package:moviesapp/watchlist/domain/repository/watchlist_repository.dart';

class GetWatchlistItemsUseCase extends BaseUseCase<List<Media>, NoParameters> {
  final WatchlistRepository _baseWatchListRepository;

  GetWatchlistItemsUseCase(this._baseWatchListRepository);

  @override
  Future<Either<Failure, List<Media>>> call(NoParameters p) async {
    return await _baseWatchListRepository.getWatchListItems();
  }
}
