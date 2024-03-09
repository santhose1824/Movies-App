import 'package:moviesapp/core/data/error/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:moviesapp/core/domain/entities/media.dart';
import 'package:moviesapp/core/domain/usecase/base_use_case.dart';
import 'package:moviesapp/watchlist/domain/repository/watchlist_repository.dart';

class AddWatchlistItemUseCase extends BaseUseCase<int, Media> {
  final WatchlistRepository _baseWatchListRepository;

  AddWatchlistItemUseCase(this._baseWatchListRepository);

  @override
  Future<Either<Failure, int>> call(Media p) async {
    return await _baseWatchListRepository.addWatchListItem(p);
  }
}
