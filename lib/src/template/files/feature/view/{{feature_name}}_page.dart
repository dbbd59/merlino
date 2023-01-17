import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:{{package_name}}/core/core.dart';
import 'package:{{package_name}}/feature/{{feature_name}}/bloc/{{feature_name}}_bloc.dart';
import 'package:{{package_name}}/feature/{{feature_name}}/view/widget/{{feature_name}}_widget.dart';

class {{feature_name_capitalize}}PageBuilder extends StatelessWidget {
  const {{feature_name_capitalize}}PageBuilder({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          getIt<{{feature_name_capitalize}}Bloc>()..add(const {{feature_name_capitalize}}Event.fetch()),
      child: Builder(
        builder: (context) {
          return BlocBuilder<{{feature_name_capitalize}}Bloc, {{feature_name_capitalize}}State>(
            builder: (context, state) {
              return state.map(
                loaded: (state) => const {{feature_name_capitalize}}Page(),
                loading: (state) => const Center(
                  child: CircularProgressIndicator(),
                ),
              );
            },
          );
        },
      ),
    );
  }
}

class {{feature_name_capitalize}}Page extends StatelessWidget {
  const {{feature_name_capitalize}}Page({
    Key? key,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return const {{feature_name_capitalize}}Widget();
  }
}
