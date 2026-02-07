import 'package:flutter/foundation.dart';
import 'product.dart';
import 'app_assets.dart';

class ProductProvider with ChangeNotifier {
  final List<Product> _products = [
    Product(
      id: '1',
      name: 'Samsung 85-Inch Neo QLED 4K Smart TV QM...',
      image: AppAssets.samsung,
      price: 32888,
      rating: 4.1,
      reviewCount: 132,
    ),
    Product(
      id: '2',
      name: 'Apple 2025 MacBook Air 15-inch Laptop with...',
      image: AppAssets.lap,
      price: 51000,
      rating: 4.8,
      reviewCount: 245,
    ),
    Product(
      id: '3',
      name: 'POLAR Ignite 3 GPS Smartwatch (Purple)',
      image: AppAssets.watch,
      price: 18500,
      rating: 4.5,
      reviewCount: 89,
    ),
    Product(
      id: '4',
      name: 'Soundcore by Anker Life Q30 Hybrid Active Noise...',
      image: AppAssets.headphone,
      price: 3850,
      rating: 4.3,
      reviewCount: 567,
    ),
    Product(
      id: '5',
      name: 'HONOR X6b 5G',
      image: AppAssets.mobile,
      price: 21898,
      rating: 4.2,
      reviewCount: 312,
    ),
    Product(
      id: '6',
      name: 'JBL Go 3 Portable Bluetooth Speaker with IP...',
      image: AppAssets.jbl,
      price: 1898,
      rating: 4.6,
      reviewCount: 892,
    ),
  ];

  List<Product> get products => _products;

  Product getProductById(String id) {
    return _products.firstWhere((product) => product.id == id);
  }
}
