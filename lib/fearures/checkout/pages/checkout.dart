import 'package:flutter/material.dart';
import 'package:skl_ecomerce/fearures/payment/payment.dart';
import 'package:skl_ecomerce/preferences/color.dart';

class BuyItem extends StatefulWidget {
  const BuyItem({super.key});

  @override
  State<BuyItem> createState() => _BuyItemState();
}

class _BuyItemState extends State<BuyItem> {
  int selectedIndex = 0;

  int itemCount = 0;

  Widget Colorset(int index, Color typecolor) {
    return InkWell(
      onTap: () {
        setState(() {
          selectedIndex = index;
        });
      },
      child: Padding(
        padding: const EdgeInsets.only(left: 3),
        child: Container(
          decoration: BoxDecoration(
              color: typecolor,
              borderRadius: BorderRadius.circular(100),
              border: Border.all(
                  color: selectedIndex == index
                      ? CustomColor.primaryColor
                      : Colors.white)),
          height: 20,
          width: 20,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(children: [
          Image.asset(
            'assets/images/chair.png',
            width: 250,
            height: 250,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  'Exclusive chair ',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(
                  height: 3,
                ),
                const Text('\$ 79.99',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: CustomColor.primaryColor)),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      children: [
                        const Text(
                          'Color :',
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 16,
                              color: Colors.black),
                        ),
                        const SizedBox(height: 10,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Colorset(0, Colors.cyan),
                            Colorset(1, Colors.amber),
                            Colorset(2, Colors.greenAccent),
                            Colorset(3, Colors.indigo),
                          ],
                        )
                      ],
                    ),
                    Column(
                      children: [
                        const Text(
                          'Quantity :',
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 16,
                              color: Colors.black),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            IconButton(
                                onPressed: () {
                                  setState(() {
                                    itemCount--;
                                  });
                                },
                                icon: const Icon(Icons.minimize_sharp)),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              itemCount.toString(),
                              textAlign: TextAlign.left,
                              style: const TextStyle(
                                  fontWeight: FontWeight.normal,
                                  fontSize: 13,
                                  color: Colors.black),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            IconButton(
                                onPressed: () {
                                  setState(() {
                                    itemCount++;
                                  });
                                },
                                icon: const Icon(Icons.add)),
                          ],
                        )
                      ],
                    )
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  'Description',
                  style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w500,
                      color: Colors.black),
                ),
                const SizedBox(
                  height: 5,
                ),
                const Text(
                  '''Lorem ipsum odor amet, consectetuer adipiscing elit. Praesent velit vestibulum diam sapien, porta suscipit. Imperdiet volutpat mattis inceptos hendrerit sed sagittis. Turpis lobortis amet lobortis ultricies habitant purus, aptent ipsum. Luctus rhoncus duis neque rhoncus ipsum dignissim. Himenaeos vivamus sed ipsum ornare suspendisse litora quis volutpat. Tortor montes efficitur ad venenatis malesuada nascetur sit.''',
                  style: TextStyle(
                      fontWeight: FontWeight.normal,
                      fontSize: 14,
                      color: Colors.black),
                  overflow: TextOverflow.ellipsis,
                  maxLines: 4,
                ),
                const SizedBox(
                  height: 2,
                ),
                const Text(
                  'Read More...',
                  style: TextStyle(
                      color: CustomColor.primaryColor,
                      fontSize: 14,
                      fontWeight: FontWeight.w300),
                )
              ],
            ),
          ),
        ]),
      ),
      bottomNavigationBar: InkWell(
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=> const PaymentScreen()));
        },
        child: Container(
          width: double.infinity,
          height: 60,
          decoration: BoxDecoration(
            color: CustomColor.primaryColor,
            borderRadius: BorderRadius.circular(20)
          ),
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Buy Now')
            ],
          ),
        ),
      ),
    );
  }
}
