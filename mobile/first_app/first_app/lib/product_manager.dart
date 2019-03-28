import 'package:flutter/material.dart';

import './products.dart';

class ProductManager extends StatefulWidget{
  final String startingProduct;

  ProductManager({this.startingProduct});

  @override
  State<StatefulWidget> createState() {
    return _ProductManagerState();
  }

}

class _ProductManagerState extends State<ProductManager>{
  List<String> _products = [];

  @override
  void initState() {
    super.initState();
    _products.add(widget.startingProduct);
  }

  @override
  void didUpdateWidget(ProductManager oldWidget) {
    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: [Container(
      margin: EdgeInsets.all(10.0),
      child: RaisedButton(
        color: Theme.of(context).primaryColor,
        child: Text('Adicionar Produto'),
        onPressed: () {
          setState(() {
            _products.add('Comida ${_products.length + 1}');
          });
        },
      ),
    ),
    Products(_products)
    ]);
  }

}