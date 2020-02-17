import 'package:flutter_wordpress/constants.dart';

/// This class holds all arguments which can be used to filter events when using
/// [WordPress.fetchEvents] method.

class ParamsEventList {
  final WordPressContext context;
  final int page;
  final int perPage;
  final List<String> categories;

  ParamsEventList({
    this.context = WordPressContext.view,
    this.page = 1,
    this.perPage = 10,
    this.categories,
  });

  Map<String, String> toMap() {
    return {
      'context': '${enumStringToName(this.context.toString())}',
      'page': '${this.page}',
      'per_page': '${this.perPage}',
      'categories': '${listToUrlString(this.categories)}',
    };
  }

  @override
  String toString() {
    return constructUrlParams(toMap());
  }
}
