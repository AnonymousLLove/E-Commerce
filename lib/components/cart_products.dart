import 'package:flutter/material.dart';

class CartProduct extends StatefulWidget {
  const CartProduct({super.key});

  @override
  State<CartProduct> createState() => CartProductState();
}

class CartProductState extends State<CartProduct> {
  var product_on_cart = [
    {
      "name": "Blazer",
      "picture": "images/IMG_4601.jpeg",
      "price": 85,
      "size": " Size:m",
      "color": "Blue",
      "qty": 20,
    },

    {
      "name": "Shoe",
      "picture": "images/i.jpg",
      "price": 85,
      "size": " Size:m",
      "color": "Blue",
      "qty": 20,
    },
    {
      "name": "Dress",
      "picture": "images/IMG_4602.jpeg",
      "price": 85,
      "size": "size:xl",
      "color": "Red",
      "qty": 20,
    },
    // {
    //   "name": "Blazer for Ladies",
    //   "picture": "iamges/IMG_4603.jpeg",
    //   "old_price": 120,
    //   "price": 85,
    // },
    // {
    //   "name": "Dress",
    //   "picture": "images/IMG_4604.jpeg",
    //   "old_price": 120,
    //   "price": 85,
    // },
    // {
    //   "name": "Heels",
    //   "picture": "i.jpg",
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
    //   "picture": "IMG_4602.jpeg",
    //   "old_price": 120,
    //   "price": 85,
    // },
    // {
    //   "name": "Pants",
    //   "picture": "iIMG_4603jpeg",
    //   "old_price": 120,
    //   "price": 85,
    // },
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: product_on_cart.length,
      itemBuilder: (context, index) {
        return Single_cart(
          cart_name: product_on_cart[index]['name'],
          cart_picture: product_on_cart[index]['picture'],
          cart_price: product_on_cart[index]['price'],
          cart_size: product_on_cart[index]['size'],
          cart_color: product_on_cart[index]['color'],
          cart_qty: product_on_cart[index]['qty'],
        );
      },
    );
  }
}

class Single_cart extends StatefulWidget {
  final cart_name;
  final cart_picture;
  final cart_price;
  final cart_size;
  final cart_color;
  final cart_qty;
  const Single_cart(
      {super.key,
      this.cart_name,
      this.cart_picture,
      this.cart_price,
      this.cart_size,
      this.cart_color,
      this.cart_qty});

  @override
  State<Single_cart> createState() => _Single_cartState();
}

class _Single_cartState extends State<Single_cart> {
  int quant = 1;

  void minus() {
    setState(() {
      quant--;
    });
  }

  void add() {
    setState(() {
      if (quant <= 9) {
        quant++;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
        height: 220,
        color: const Color(0xFFEDECF2),
        child: Row(children: [
          Container(
              width: 180,
              decoration: BoxDecoration(
                  color: const Color(0xFFEDECF2),
                  borderRadius: BorderRadius.circular(20)),
              padding: const EdgeInsets.all(4.0),
              child: Image.asset(
                widget.cart_picture,
                fit: BoxFit.fill,
              )),
          Column(
            children: [
              const Padding(
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 30)),
              Text(
                widget.cart_name,
                style:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
              ),
              const Text(' '),
              /*  RichText(
          text: 
          TextSpan(
              text: 'Size: M',
              style: TextStyle(color:Colors.grey, fontSize: 18),
              recognizer: TapGestureRecognizer()
                ..onTap = () { onTap: () => Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => Products()));}
                ),),*/

              Text(widget.cart_size,
                  style: const TextStyle(color: Colors.grey, fontSize: 18)),
              const Text('\$100',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 22,
                      color: Colors.purple)),
              Text('Color:' + widget.cart_color,
                  style: const TextStyle(fontSize: 18)),
              Row(
                children: [
                  const Padding(
                    padding: EdgeInsets.symmetric(
                      vertical: 10,
                    ),
                  ),
                  Container(
                    child: IconButton(
                        icon: const Icon(Icons.add_circle_outline,
                            color: Colors.purple, size: 25),
                        onPressed: () {
                          add();
                        }),
                  ),

                  Container(
                      alignment: Alignment.bottomRight,
                      margin: const EdgeInsets.symmetric(horizontal: 20),
                      child: Text("$quant",
                          style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.purple,
                          ))),

                  Container(
                    child: IconButton(
                        icon: const Icon(Icons.remove_circle_outline_outlined,
                            color: Colors.purple, size: 25),
                        onPressed: () {
                          minus();
                        }),
                  ),

                  // IconButton(icon: const Icon(Icons.add_circle_outline, color :Colors.purple, size:18)),
                ],
              ),
            ],
          )
        ]),
      )
    ]);
  }
}
