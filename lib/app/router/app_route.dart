enum AppRoute { start, main, result } //중요 정의 하는 메소드드

extension AppRouteExtension on AppRoute {
  String get toPath => '/$name';
}
