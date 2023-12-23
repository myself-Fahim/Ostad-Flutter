import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_project/Extension.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ProductlistScreen(),
    );
  }
}

class ProductlistScreen extends StatefulWidget {
  const ProductlistScreen({super.key});

  @override
  State<ProductlistScreen> createState() => _ProductlistScreenState();
}

class _ProductlistScreenState extends State<ProductlistScreen> {
  List Product = [
    {"Name": "Product 1",  "Price": "\$20.00"},
    {"Name": "Product 2",  "Price": "\$10.00"},
    {"Name": "Product 3",  "Price": "\$15.00"},
    {"Name": "Product 4",  "Price": "\$25.00"},
    {"Name": "Product 5",  "Price": "\$32.00"},
    {"Name": "Product 6",  "Price": "\$30.00"},
    {"Name": "Product 7",  "Price": "\$30.00"},
    {"Name": "Product 8",  "Price": "\$30.00"},
    {"Name": "Product 9",  "Price": "\$30.00"},
    {"Name": "Product 10", "Price":"\$30.00"},
    {"Name": "Product 11", "Price":"\$40.00"},
    {"Name": "Product 12", "Price":"\$10.00"},
    {"Name": "Product 13", "Price":"\$5.00"},
    {"Name": "Product 14", "Price":"\$70.00"},
    {"Name": "Product 15", "Price":"\$9.00"},
  ];
  List counter = List.filled(15, 0);
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ProductList'),
      ),
      body: ListView.builder(
        itemCount: Product.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(Product[index]["Name"]),
            subtitle: Text(Product[index]["Price"]),
            trailing: Column(
              children: [
                Expanded(child: Text('counter:${counter[index]}')),
                Expanded(
                    child: ElevatedButton(
                        onPressed: () {
                          count++;
                          counter[index]++;
                          setState(() {});
                          if (counter[index] == 5) {
                            showDialog(
                                context: context,
                                builder: (context) => AlertDialog(
                                      title: Text('Congratulation!'),
                                      content: Text(
                                          'You Have bought 5 ${Product[index]["Name"]}!'),
                                      actions: [
                                        TextButton(
                                            onPressed: () {
                                              Navigator.pop(context);
                                            },
                                            child: Text('Ok'))
                                      ],
                                    ));
                          }
                        },
                        child: Text('Buy Now')))
              ],
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => CartScreen(count)));
        },
        child: Icon(Icons.local_grocery_store),
      ),
    );
  }
}

class CartScreen extends StatefulWidget {
  final int number;

  CartScreen(this.number);

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cart'),
        centerTitle: true,
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Total Product :${widget.number}',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      )),
    );
  }
}
