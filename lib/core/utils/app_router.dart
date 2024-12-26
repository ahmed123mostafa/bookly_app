import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:kk/core/utils/service_locator.dart';
import 'package:kk/feature/home/data/models/book_model.dart';
import 'package:kk/feature/home/data/repos/home_repo_impl.dart';

import 'package:kk/feature/home/presentation/manager/similair_book_cubit/similair_book_cubit.dart';
import 'package:kk/feature/home/presentation/views/hom_view.dart';

import 'package:kk/feature/search/presentation/virews_model/view/search_view.dart';
import 'package:kk/feature/splach/presentation/views_model/views/splachview.dart';

import '../../feature/home/presentation/views/book_details_view.dart';

abstract class AppRouter {
  // ignore: constant_identifier_names
  static const KHomeView = '/HomeView';
  // ignore: constant_identifier_names
  static const KSearchView = '/SearchView';
  // ignore: constant_identifier_names
  static const KBookDetailsView = "/BookDetailsView";
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplachScrean(),
      ),
      GoRoute(
        path: KSearchView,
        builder: (context, state) => const SearchView(),
      ),
      GoRoute(
        path: KHomeView,
        builder: (context, state) => const HomeViewBody(),
      ),
      GoRoute(
        path: KBookDetailsView,
        builder: (context, state) => BlocProvider(
          create: (context) => SimilairBookCubit(getIt.get<HomeRepoImpl>()),
          child: Bookdetailsview(
            bookModel: state.extra as BookModel,
          ),
        ),
      ),
      GoRoute(
        path: KSearchView,
        builder: (context, state) => const SearchView(),
      ),
    ],
  );
}
