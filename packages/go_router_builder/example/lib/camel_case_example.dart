// Copyright 2013 The Flutter Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// ignore_for_file: public_member_api_docs, unreachable_from_main

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

part 'camel_case_example.g.dart';

void main() => runApp(const App());

final GoRouter _router = GoRouter(
  routes: $appRoutes,
  initialLocation: '/home',
);

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: _router,
    );
  }
}

class Extra {
  const Extra(this.value, this.title);

  final int value;
  final String title;
}

@TypedGoRoute<HomeRoute>(
  path: '/home',
  routes: <TypedRoute<RouteData>>[
    TypedGoRoute<CamelCaseRoute>(
      paramsKind: ParamsKind.camelCase,
      path: '/camelCase',
    ),
    TypedGoRoute<SnakeCaseRoute>(
      paramsKind: ParamsKind.snakeCase,
      path: '/snake_case',
    ),
  ],
)
class HomeRoute extends GoRouteData {
  const HomeRoute({this.$extra});

  final Extra? $extra;

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      HomeScreen(extra: $extra);
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key, this.extra});

  final Extra? extra;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home')),
      body: Center(child: Text('Extra: ${extra?.value}')),
    );
  }
}

class CamelCaseRoute extends GoRouteData {
  const CamelCaseRoute(this.exampleId, this.exampleName, this.exampleOthers);

  final int exampleId;
  final String exampleName;
  final String exampleOthers;

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const CamelCaseExample();
}

class CamelCaseExample extends StatelessWidget {
  const CamelCaseExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Camel Case')),
      body: const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text('Camel Case Example'),
        ],
      ),
    );
  }
}

class SnakeCaseRoute extends GoRouteData {
  const SnakeCaseRoute(this.exampleId, this.exampleName, this.exampleOthers);

  final int exampleId;
  final String exampleName;
  final String exampleOthers;

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const CamelCaseExample();
}

class SnakeCaseExample extends StatelessWidget {
  const SnakeCaseExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Snake Case')),
      body: const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text('Snake Case Example'),
        ],
      ),
    );
  }
}
