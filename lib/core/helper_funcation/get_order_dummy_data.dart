import 'package:e_commerce_dashboard/core/enums/order_enum.dart';
import 'package:e_commerce_dashboard/features/orders/domain/entities/data/models/order_entity.dart';
import 'package:e_commerce_dashboard/features/orders/domain/entities/data/models/order_product_entity.dart';
import 'package:e_commerce_dashboard/features/orders/domain/entities/data/models/shipping_address_entity.dart';

OrderEntity getDummyOrder() {
  // Create a sample shipping address
  ShippingAddressEntity shippingAddress = ShippingAddressEntity(
    name: 'John Doe',
    phone: '123-456-7890',
    address: '123 Main St',
    floor: '5th Floor',
    city: 'New York',
    email: 'johndoe@example.com',
  );

  // Create a sample list of order products
  List<OrderProductEntity> orderProducts = [
    OrderProductEntity(
      name: 'Product A',
      code: 'A123',
      imageUrl:
          'https://encrypted-tbn0.gstatic.com/licensed-image?q=tbn:ANd9GcTyONSJwqfuXtDHXMIgtZXP08vwtGefnnXMtKATggEnnvNdOc6WMbjI-0E6X0eLigWgQHsIbo_I_U-uSRrSsIyQS5mWwaPID_x52P8KqY3yKjVAnUbeAZE_lp__kPKLJRirha-IE29td6P2&s=19',
      price: 49.99,
      quantity: 2,
    ),
    OrderProductEntity(
      name: 'Product B',
      code: 'B456',
      imageUrl:
          'https://encrypted-tbn0.gstatic.com/licensed-image?q=tbn:ANd9GcTyONSJwqfuXtDHXMIgtZXP08vwtGefnnXMtKATggEnnvNdOc6WMbjI-0E6X0eLigWgQHsIbo_I_U-uSRrSsIyQS5mWwaPID_x52P8KqY3yKjVAnUbeAZE_lp__kPKLJRirha-IE29td6P2&s=19',
      price: 29.99,
      quantity: 1,
    ),
    OrderProductEntity(
      name: 'Product C',
      code: 'C789',
      imageUrl:
          'https://encrypted-tbn0.gstatic.com/licensed-image?q=tbn:ANd9GcTyONSJwqfuXtDHXMIgtZXP08vwtGefnnXMtKATggEnnvNdOc6WMbjI-0E6X0eLigWgQHsIbo_I_U-uSRrSsIyQS5mWwaPID_x52P8KqY3yKjVAnUbeAZE_lp__kPKLJRirha-IE29td6P2&s=19',
      price: 19.99,
      quantity: 3,
    ),
  ];

  // Calculate total price
  double totalPrice = orderProducts.fold(
    0,
    (sum, product) => sum + (product.price * product.quantity),
  );

  // Create and return the OrderModel
  return OrderEntity(
    status: OrderStatusEnum.pending,
    totalPrice: totalPrice,
    uId: 'user123',
    shippingAddressModel: shippingAddress,
    orderProducts: orderProducts,
    paymentMethod: 'Cash',
  );
}
