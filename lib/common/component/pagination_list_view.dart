import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../model/cursor_pagination_model.dart';

class _PaginationInfo {
  final int fetchCount;
  final bool fetchMore;
  final bool forceRefetch;

  _PaginationInfo({
    this.fetchCount = 20,
    this.fetchMore = false,
    this.forceRefetch = false,
  });
}

class PaginationController<T extends IModelWithId,
    U extends IBasePaginationRepository<T>> extends GetxController {
  final U repository;
  final paginationThrottle = Throttle(
    Duration(seconds: 3),
    initialValue: _PaginationInfo(),
    checkEquality: false,
  );

  final paginationState = CursorPaginationBase().obs;

  PaginationController({
    required this.repository,
  });

  @override
  void onInit() {
    super.onInit();
    paginate();
    paginationThrottle.values.listen((state) {
      _throttledPagination(state);
    });
  }

  Future<void> paginate({
    int fetchCount = 20,
    bool fetchMore = false,
    bool forceRefetch = false,
  }) async {
    paginationThrottle.setValue(_PaginationInfo(
      fetchMore: fetchMore,
      fetchCount: fetchCount,
      forceRefetch: forceRefetch,
    ));
  }

  _throttledPagination(_PaginationInfo info) async {
    final fetchCount = info.fetchCount;
    final fetchMore = info.fetchMore;
    final forceRefetch = info.forceRefetch;

    try {
      if (paginationState.value is CursorPagination &&
          !(paginationState.value as CursorPagination).meta.hasMore) {
        return;
      }

      final isLoading = paginationState.value is CursorPaginationLoading;
      final isRefetching = paginationState.value is CursorPaginationRefetching;
      final isFetchingMore =
          paginationState.value is CursorPaginationFetchingMore;

      if (fetchMore && (isLoading || isRefetching || isFetchingMore)) {
        return;
      }

      PaginationParams paginationParams = PaginationParams(
        count: fetchCount,
      );

      if (fetchMore) {
        final pState = paginationState.value as CursorPagination<T>;

        paginationState.value = CursorPaginationFetchingMore(
          meta: pState.meta,
          data: pState.data,
        );

        paginationParams = paginationParams.copyWith(
          after: pState.data.last.id,
        );
      } else {
        if (paginationState.value is CursorPagination && !forceRefetch) {
          final pState = paginationState.value as CursorPagination;

          paginationState.value = CursorPaginationRefetching<T>(
            meta: pState.meta,
            data: pState.data,
          );
        } else {
          paginationState.value = CursorPaginationLoading();
        }
      }

      final resp = await repository.paginate(
        paginationParams: paginationParams,
      );

      if (paginationState.value is CursorPaginationFetchingMore) {
        final pState = paginationState.value as CursorPaginationFetchingMore<T>;

        paginationState.value = resp.copyWith(
          data: [
            ...pState.data,
            ...resp.data,
          ],
        );
      } else {
        paginationState.value = resp;
      }
    } catch (e, stack) {
      print(e);
      print(stack);
      paginationState.value =
          CursorPaginationError(message: '데이터를 가져오지 못했습니다.');
    }
  }
}
