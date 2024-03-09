import 'package:dartz/dartz.dart';
import 'package:moviesapp/core/data/error/failure.dart';
import 'package:moviesapp/core/domain/entities/media.dart';

abstract class WatchlistRepository {
  Future<Either<Failure, List<Media>>> getWatchListItems();
  Future<Either<Failure, int>> addWatchListItem(Media media);
  Future<Either<Failure, Unit>> removeWatchListItem(int index);
  Future<Either<Failure, int>> checkIfItemAdded(int tmdbId);
}
