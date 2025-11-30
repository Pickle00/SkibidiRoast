import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:skibidi_roast/blocs/skibidi_bloc/skibidi_bloc.dart';

List<BlocProvider> blocProviders = [
  BlocProvider<SkibidiBloc>(create: (context) => SkibidiBloc()),
];
