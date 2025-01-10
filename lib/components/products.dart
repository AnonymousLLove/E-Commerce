import 'package:flutter/material.dart';

import 'package:ecommerce/pages/products_details.dart';

class Products extends StatefulWidget {
  const Products({super.key});

  @override
  State<Products> createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  var product_list = [
    {
      "name": "Blazer",
      "picture": "images/IMG_4602.jpeg",
      "old_price": 120,
      "price": 85,
    },
    {
      "name": "Pants",
      "picture": "images/IMG_4604.jpeg",
      "old_price": 120,
      "price": 85,
    },
    {
      "name": "Dress",
      "picture": "images/dress2.png",
      "old_price": 1200,
      "price": 125,
    },
    {
      "name": "Shoes",
      "picture": "images/i.jpg",
      "old_price": 146,
      "price": 100,
    },
    {
      "name": "Pants",
      "picture": "images/IMG_4604.jpeg",
      "old_price": 120,
      "price": 85,
    },

    // {
    //   "name": "Heels",
    //   "picture": "IMG_4601.jpeg",
    //   "old_price": 120,
    //   "price": 85,
    // },
    // {
    //   "name": "Heels",
    //   "picture": "IMG_4601.jpeg",
    //   "old_price": 120,
    //   "price": 85,
    // },
    // {
    //   "name": "Pants",
    //   "picture": "IMG_4601.jpeg",
    //   "old_price": 120,
    //   "price": 85,
    // },
    // {
    //   "name": "Pants",
    //   "picture": "IMG_4601.jpeg",
    //   "old_price": 120,
    //   "price": 85,
    // },
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: product_list.length,
      gridDelegate:
          const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      itemBuilder: (BuildContext context, int index) {
        return Single_prod(
          prod_name: product_list[index]['name'],
          prod_picture: product_list[index]['picture'],
          prod_price: product_list[index]['price'],
          prod_old_price: product_list[index]['old_price'],
        );
      },
    );
  }
}

class Single_prod extends StatelessWidget {
  final prod_name;
  final prod_picture;
  final prod_price;
  final prod_old_price;

  const Single_prod({
    super.key,
    required this.prod_name,
    required this.prod_picture,
    required this.prod_price,
    required this.prod_old_price,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
        child: Material(
      child: InkWell(
        //when you tap on the images
        onTap: () => Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => ProductDetails(
                  product_detail_name: prod_name,
                  product_detail_old: prod_old_price,
                  product_detail_picture: prod_picture,
                  product_detail_price: prod_price,
                ))),
        child: GridTile(
            footer: Container(
              height: 40.0,
              color: Colors.white,
              child: Row(children: [
                SizedBox(width: 20),
                Expanded(
                    child: Text(
                  prod_name,
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 17.0),
                )),
                Text("\$$prod_price",
                    style: const TextStyle(
                        color: Color.fromARGB(255, 213, 16, 2),
                        fontWeight: FontWeight.w800,
                        fontSize: 20)),
                SizedBox(width: 20),
                Text("\$$prod_old_price",
                    style: const TextStyle(
                        color: Colors.black87,
                        fontWeight: FontWeight.w800,
                        decoration: TextDecoration.lineThrough))
              ]),
            ),
            child: Image.asset(
              prod_picture,
              fit: BoxFit.cover,
            )),
      ),
    )
        //),
        );
  }
}
