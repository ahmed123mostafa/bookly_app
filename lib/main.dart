import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kk/constans.dart';
import 'package:kk/core/utils/service_locator.dart';
import 'package:kk/feature/home/data/repos/home_repo_impl.dart';
import 'package:kk/feature/home/presentation/manager/newset_book_cubit/newset_book_cubit.dart';
import 'core/utils/app_router.dart';
import 'feature/home/presentation/manager/featured_book_cubit/featuerdbooks_cubit.dart';

void main() {
  setupServiceLocator();
  runApp(const BooklyApp());
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
            create: (context) => FeatuerdbooksCubit(getIt.get<HomeRepoImpl>())
              ..Fetchfaeturedbook()),
        BlocProvider(
            create: (context) => NewsetBookCubit(
                  getIt.get<HomeRepoImpl>(),
                )..FetchNewsetBook()),
      ],
      child: MaterialApp.router(
        routerConfig: AppRouter.router,
        theme: ThemeData.dark().copyWith(
            scaffoldBackgroundColor: kprimarycolor,
            textTheme:
                GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme)),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
