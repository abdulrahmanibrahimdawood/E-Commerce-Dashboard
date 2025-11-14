import 'package:e_commerce_dashboard/core/enums/order_enum.dart';
import 'package:e_commerce_dashboard/features/orders/domain/repos/order_repo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart' show Cubit;

part 'update_order_state.dart';

class UpdateOrderCubit extends Cubit<UpdateOrderState> {
  UpdateOrderCubit(this.orderRepo) : super(UpdateOrderInitial());
  final OrderRepo orderRepo;
  void updateOrder({
    required OrderStatusEnum status,
    required String orderId,
  }) async {
    emit(UpdateOrderLoading());
    final result = await orderRepo.updateOrder(
      status: status,
      orderId: orderId,
    );
    result.fold(
      (failure) => emit(UpdateOrderFailure(errMessage: failure.message)),
      (success) => emit(UpdateOrderSuccess()),
    );
  }
}
