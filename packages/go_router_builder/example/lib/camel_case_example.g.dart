// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: always_specify_types, public_member_api_docs

part of 'camel_case_example.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [
      $homeRoute,
    ];

RouteBase get $homeRoute => GoRouteData.$route(
      path: '/home',
      factory: $HomeRouteExtension._fromState,
      routes: [
        GoRouteData.$route(
          path: '/camelCase',
          factory: $CamelCaseRouteExtension._fromState,
        ),
        GoRouteData.$route(
          path: '/snake_case',
          factory: $SnakeCaseRouteExtension._fromState,
        ),
      ],
    );

extension $HomeRouteExtension on HomeRoute {
  static HomeRoute _fromState(GoRouterState state) => HomeRoute(
        $extra: state.extra as Extra?,
      );

  String get location => GoRouteData.$location(
        '/home',
      );

  void go(BuildContext context) => context.go(location, extra: $extra);

  Future<T?> push<T>(BuildContext context) =>
      context.push<T>(location, extra: $extra);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location, extra: $extra);

  void replace(BuildContext context) =>
      context.replace(location, extra: $extra);
}

extension $CamelCaseRouteExtension on CamelCaseRoute {
  static CamelCaseRoute _fromState(GoRouterState state) => CamelCaseRoute(
        int.parse(state.uri.queryParameters['exampleId']!),
        state.uri.queryParameters['exampleName']!,
        state.uri.queryParameters['exampleOthers']!,
      );

  String get location => GoRouteData.$location(
        '/camelCase',
        queryParams: {
          'exampleId': exampleId.toString(),
          'exampleName': exampleName,
          'exampleOthers': exampleOthers,
        },
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $SnakeCaseRouteExtension on SnakeCaseRoute {
  static SnakeCaseRoute _fromState(GoRouterState state) => SnakeCaseRoute(
        int.parse(state.uri.queryParameters['example_id']!),
        state.uri.queryParameters['example_name']!,
        state.uri.queryParameters['example_others']!,
      );

  String get location => GoRouteData.$location(
        '/snake_case',
        queryParams: {
          'example_id': exampleId.toString(),
          'example_name': exampleName,
          'example_others': exampleOthers,
        },
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}
