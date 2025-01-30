import 'package:e_bookly/Features/Home/presentation/views/book_details_view.dart';
import 'package:e_bookly/Features/Home/presentation/views/home_view.dart';
import 'package:e_bookly/Features/Splash/presentation/view_models/views/splash_view.dart';
import 'package:e_bookly/Features/search/presentation/views/search_view.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const kHomeView = '/homeView';
  static const kBookDetailsView = '/bookDetailsView';
  static const kSearchView = '/SearchView';
  static final router = GoRouter(routes: [
    GoRoute(
      path: '/',
      builder: (context, index) => const SplashView(),
    ),
    GoRoute(
      path: kHomeView,
      builder: (context, index) => const HomeView(),
    ),
    GoRoute(
      path: kBookDetailsView,
      builder: (context, index) => const BookDetailsView(),
    ),
    GoRoute(
      path: kSearchView,
      builder: (context, index) => const SearchView(),
    ),
  ]);
}
