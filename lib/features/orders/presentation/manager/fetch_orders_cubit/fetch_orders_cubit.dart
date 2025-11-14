import 'dart:async';

import 'package:e_commerce_dashboard/features/orders/domain/entities/data/models/order_entity.dart';
import 'package:e_commerce_dashboard/features/orders/domain/repos/order_repo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart' show Cubit;

part 'fetch_orders_state.dart';

class FetchOrdersCubit extends Cubit<FetchOrdersState> {
  FetchOrdersCubit(this.orderRepo) : super(FetchOrdersInitial());
  final OrderRepo orderRepo;
  StreamSubscription? _streamSubscription;
  void fetchOrders() {
    emit(FetchOrdersLoading());
    _streamSubscription = orderRepo.fetchOrders().listen((result) {
      result.fold(
        (failure) => emit(FetchOrdersFailure(errorMessage: failure.message)),
        (orders) => emit(FetchOrdersSuccess(orders: orders)),
      );
    });
  }

  @override
  Future<void> close() {
    _streamSubscription?.cancel();
    return super.close();
  }
}
