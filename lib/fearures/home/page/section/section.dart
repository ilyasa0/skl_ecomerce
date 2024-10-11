part of '../page.dart';


class Trending extends StatelessWidget {
  const Trending({
    super.key,
    required this.products,
  });

  final List<Products> products;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>const BuyItem()));
      },
      child: SizedBox(
        child: ListView.separated(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemBuilder: (BuildContext context, int index) {
            final product = products[index];
            return Container(
              decoration: BoxDecoration(
                  color: const Color(0XFFF3F7FE),
                  borderRadius: BorderRadius.circular(16)
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 18.0),
                child: Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.asset(product.img,height: 100,width: 100,),
                    ),
                    const SizedBox(
                      width: 14,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[

                          Text(
                            product.title ,
                            style: const TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 16,
                            ),
                            maxLines: 2,
                          ),
                          const SizedBox(
                            height: 6,
                          ),
                          Text(
                            product.desc,
                            style: const TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,

                            ),
                          ),
                          const SizedBox(
                            height: 6,
                          ),
                          Text(
                            product.price,
                            style: const TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 16,
                                color: CustomColor.primaryColor
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
          separatorBuilder: (BuildContext context, int index) {
            return const SizedBox(
              height: 16,
            );
          },
          itemCount: products.length,
        ),
      ),
    );
  }
}

class bestSelling extends StatelessWidget {
  const bestSelling({
    super.key,
    required this.products,
  });

  final List<Products> products;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 210,
      child: ListView.separated(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, int index) {
          final product = products[index];
          return InkWell(

            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>const BuyItem()));
            },

            child: Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  width: 180,
                  decoration: BoxDecoration(
                    color: const Color(0XFFF3F7FE),
                    borderRadius: BorderRadius.circular(14),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset(product.img,width: 150,height: 120,),
                        const SizedBox(height: 8,),
                        Text(product.title,style: const TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                        ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                        Text(product.desc, style: const TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 13
                        ),
                          overflow: TextOverflow.ellipsis,),
                        Text(product.price,style: const TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 15,
                            color: CustomColor.primaryColor
                        ),)
                      ],
                    ),
                  ),
                ),
                Positioned(
                    right: -10,
                    bottom: -5,
                    child: Container(
                        width: 30,
                        height: 30,
                        decoration: BoxDecoration(
                            color: Colors.cyan,
                            borderRadius: BorderRadius.circular(5)
                        ),
                        child:const Icon(CupertinoIcons.bookmark)
                    )
                )
              ],

            ),
          );
        },
        separatorBuilder: (BuildContext context, int index) {
          return const SizedBox(width: 50,);

        },
        itemCount: products.length,),
    );
  }
}

class ColectionCard extends StatelessWidget {
  const ColectionCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:
      const EdgeInsets.symmetric(vertical: 18, horizontal: 24),
      decoration: BoxDecoration(
          color: CustomColor.secondaryColor,
          borderRadius: BorderRadius.circular(14)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              const Text(
                'Collection',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 22,
              ),
              RichText(
                textAlign: TextAlign.left,
                text: const TextSpan(
                  text: 'New \n',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: CustomColor.primaryColor),
                  children: [
                    TextSpan(
                        text: 'Arrivals',
                        style: TextStyle(color: Colors.black,fontWeight: FontWeight.w700)),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                textAlign: TextAlign.left,
                'lorem',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.normal,
                ),
                maxLines: 2,
              ),
              const SizedBox(
                height: 25,
              ),

              const Text(
                'SHOP NOW',
                style: TextStyle(
                  fontWeight: FontWeight.bold, fontSize: 15,
                ),
                maxLines: 2,
              )
            ],
          ),

          ClipRRect(
            borderRadius:BorderRadius.circular(18),
            child: Image.asset('assets/images/chair.png',width: 120,height: 120,),
          )
        ],
      ),
    );
  }
}

class top_navbar extends StatelessWidget {
  const top_navbar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Image.asset(
          'assets/images/menu.png',
          width: 20,
          height: 20,

        ),

        const Row(
          children: [
            Icon(Icons.search_rounded),
            SizedBox(
              width: 20,
            ),
            Icon(CupertinoIcons.profile_circled)
          ],
        )
      ],
    );
  }
}