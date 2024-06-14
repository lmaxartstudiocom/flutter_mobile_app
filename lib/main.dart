import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'core/di/provider_container.dart';
import 'features/top_stories/data/app_repository.dart';
import 'features/top_stories/domain/bloc/top_stories_bloc.dart';
import 'features/top_stories/presentation/top_stories_view.dart';
import 'firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  addInjection();
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: BlocProvider<TopStoriesBloc>(
        create: (context) => TopStoriesBloc(GetIt.instance.get<AppRepository>())..add(const TopStoriesEvent.init()),
        child: Builder(
          builder: (context) {
            final bloc = context.read<TopStoriesBloc>();
            return BlocBuilder<TopStoriesBloc, TopStoriesState>(
              bloc: bloc,
              builder: (context, state) => state.maybeMap(
                data: (value) => TopStoriesView(
                  pagingController: bloc.pagingController,
                  textEditingController: bloc.textEditingController,
                  loadNotifier: bloc.loadNotifier,
                  isConnected: bloc.isConnected,
                  thereAreNewOnes: bloc.thereAreNewOnes,
                ),
                initial: (value) => const Center(child: CircularProgressIndicator()),
                loading: (value) => const Center(child: CircularProgressIndicator()),
                orElse: () => const Placeholder(),
              ),
            );
          },
        ),
      ),
    ));
  }
}

//flutter pub run build_runner build --delete-conflicting-outputs
