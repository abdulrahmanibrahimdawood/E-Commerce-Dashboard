import 'package:bloc/bloc.dart';
import 'package:e_commerce_dashboard/features/orders/domain/entities/data/models/order_entity.dart';
import 'package:e_commerce_dashboard/features/orders/domain/repos/order_repo.dart';
import 'package:meta/meta.dart';

part 'fetch_orders_state.dart';

class FetchOrdersCubit extends Cubit<FetchOrdersState> {
  FetchOrdersCubit(this.orderRepo) : super(FetchOrdersInitial());
  final OrderRepo orderRepo;

  void fetchOrders() async {
    emit(FetchOrdersLoading());
    await for (var result in orderRepo.fetchOrders()) {
      result.fold(
        (failure) => emit(FetchOrdersFailure(errorMessage: failure.message)),
        (orders) => emit(FetchOrdersSuccess(orders: orders)),
      );
    }
  }
}
