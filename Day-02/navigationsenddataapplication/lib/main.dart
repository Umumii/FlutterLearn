import 'package:flutter/material.dart';

class Product {
  final String name;
  final String desc;
  Product(this.name, this.desc);
}

void main() {
  runApp(MaterialApp(
    title: '导航数据传递',
    home: ProductWidget(
        products: List.generate(
            20, (index) => Product('商品 $index', '商品详情，编号为:$index'))),
  ));
}

class ProductWidget extends StatelessWidget {
  final List<Product> products;
  ProductWidget({Key key, @required this.products}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('商品列表'),
      ),
      body: ListView.builder(
          itemCount: products.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(products[index].name),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            ProductDetailWidget(product: products[index])));
              },
            );
          }),
    );
  }
}

class ProductDetailWidget extends StatelessWidget {
  final Product product;
  const ProductDetailWidget({Key key, @required this.product})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('${product.name}'),
      ),
      body: Center(
        child: Text('${product.desc}'),
      ),
    );
  }
}
