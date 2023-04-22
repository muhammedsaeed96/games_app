import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:games_app/src/core/utils/api_service.dart';
import 'package:games_app/src/features/home/data/repositories/game_repo._impl.dart';
import 'package:games_app/src/features/home/presentation/cubit/game_cubit/games_cubit.dart';
import '../src/features/home/presentation/views/home_view.dart';
import 'src/core/config/themes/app_theme.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'src/features/game_details/presentation/views/game_details_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
    ));
    return BlocProvider(
      create: (context) =>
          GamesCubit(gameRepoImp: GameRepoImp(apiService: ApiService(Dio()))),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Games App',
        theme: AppTheme.light,
        home: const HomeView(),
        routes: {
          GameDetailsView.routeName: (context) => const GameDetailsView(),
        },
      ),
    );
  }
}
