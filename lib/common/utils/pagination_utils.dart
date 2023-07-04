import 'package:flutter/material.dart';

import '../controller/cursor_pagination_controller.dart';

class PaginationUtils {
  static void paginate({
    required ScrollController controller,
    required CursorPaginationController pgController,
  }) {
    if (controller.offset > controller.position.maxScrollExtent - 300) {
      pgController.paginate(
        fetchMore: true,
      );
    }
  }
}
