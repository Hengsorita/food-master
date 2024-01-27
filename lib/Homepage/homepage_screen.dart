import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project/Data/newdata.dart';
import 'package:project/Homepage/home_controller.dart';
import 'package:project/Product/product_screen.dart';
import 'package:project/Profile/profile_screen.dart';
import 'package:project/model/food_model.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var scaffoldKey = GlobalKey<ScaffoldState>();

  final categoryList = ["Fast Food, Drink, Coca"];

  HomeController homeController = Get.put(HomeController());

  @override
  void initState() {
    homeController.getFoods();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      initialIndex: 0,
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: Colors.grey[100],
        appBar: buildAppBar(),
        drawer: buildDrawer(),
        body: buildBody(),
      ),
    );
  }

  buildAppBar() {
    return AppBar(
      backgroundColor: Colors.white,
      leadingWidth: 70,
      leading: Padding(
        padding: const EdgeInsets.only(left: 15),
        child: ClipPath(
          clipper: ParallelogramClipper(),
          child: Container(
            color: Colors.grey.withOpacity(0.2),
            child: IconButton(
              onPressed: () {
                Get.to(Profilescreen());
              },
              // icon: Image.asset(
              //   menuIcon,
              //   height: 20,
              // ),
              icon: const Icon(
                Icons.vertical_distribute,
                size: 20,
              ),
            ),
          ),
        ),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 15),
          child: InkWell(
            onTap: () {},
            child: ClipPath(
              clipper: ParallelogramClipper(),
              child: SizedBox(
                height: 55,
                width: 55,
                child: Image.network(
                    'https://banner2.cleanpng.com/20190702/ubp/kisspng-portable-network-graphics-clip-art-take-out-pizza-5d1c0bf8b7f556.3207228215621191607535.jpg'),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Drawer buildDrawer() {
    return Drawer(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(0),
      ),
      backgroundColor: Colors.white,
      child: ListView(
        shrinkWrap: true,
        children: [],
      ),
    );
  }

  buildBody() {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 10,
          ),
          buildHeaderText(),
          const SizedBox(
            height: 10,
          ),
          buildSearchRout(),
          const SizedBox(
            height: 10,
          ),
          _buildTabBar(),
          const SizedBox(
            height: 10,
          ),
          GetBuilder<HomeController>(builder: (controoler) {
            return Expanded(child: _buildTabBody());
          })
        ],
      ),
    );
  }

  Column buildHeaderText() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Find Your",
          style: GoogleFonts.poppins(
            fontSize: 25,
          ),
        ),
        Text.rich(
          TextSpan(
            children: [
              TextSpan(
                text: "Best Food ",
                style: GoogleFonts.poppins(
                  color: Colors.black,
                  fontSize: 25,
                  fontWeight: FontWeight.w500,
                ),
              ),
              TextSpan(
                text: "here",
                style: GoogleFonts.poppins(
                  color: Colors.black,
                  fontSize: 25,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Row buildSearchRout() {
    return Row(
      children: [
        Expanded(
          child: InkWell(
            onTap: () {},
            child: SizedBox(
              height: 50,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  backgroundColor: Colors.grey[300],
                ),
                child: Row(
                  children: [
                    const Icon(
                      Icons.search,
                      color: Colors.black,
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    Text(
                      "search food",
                      style: GoogleFonts.poppins(
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        ClipPath(
          clipper: ParallelogramClipper(),
          child: Container(
            height: 55,
            width: 55,
            color: Colors.red,
            child: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.swap_horiz,
                color: Colors.white,
                size: 27,
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildTabBar() {
    List<Widget> tabBar = [];
    categoryList.forEach((category) {
      tabBar.add(
        Tab(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [Icon(Icons.local_pizza), Text(category)],
          ),
        ),
      );
    });

    return Container(
      child: TabBar(
        dividerColor: Colors.transparent,
        labelColor: Colors.white,
        indicatorSize: TabBarIndicatorSize.tab,
        unselectedLabelColor: Colors.black87,
        indicatorWeight: 0,
        indicator: BoxDecoration(
            color: Colors.red, borderRadius: BorderRadius.circular(16)),
        onTap: (value) {
          homeController.filterByCatgory(categoryList[value]);
        },
        tabs: [
          Tab(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [Icon(Icons.local_pizza), Text(categoryList[0])],
            ),
          ),
          Tab(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [Icon(Icons.local_drink), Text(categoryList[1])],
            ),
          ),
          Tab(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [Icon(Icons.local_drink), Text(categoryList[2])],
            ),
          )
        ],
      ),
    );
  }

  Widget _buildTabBody() {
    return ListView.builder(
        itemCount: homeController.foodList.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          final FoodRepo food = homeController.foodList[index];
          return InkWell(
            onTap: () {
              Get.to(Detailscreen(
                food: food,
              ));
            },
            child: Container(
              width: 250,
              margin: EdgeInsets.symmetric(vertical: 10, horizontal: 8),
              child: Card(
                elevation: 6,
                surfaceTintColor: Colors.white,
                color: Colors.white,
                shadowColor: Colors.black87,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                          width: 180,
                          height: 160,
                          margin: EdgeInsets.all(16),
                          decoration: BoxDecoration(boxShadow: [
                            BoxShadow(color: Colors.black87, blurRadius: 30.0)
                          ], shape: BoxShape.circle),
                          clipBehavior: Clip.antiAlias,
                          child: Image.network(
                            food.image,
                            fit: BoxFit.fill,
                          )),
                      Text(
                        food.subtitle,
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'foodModel.desc',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.grey,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.star,
                            color: Colors.yellow[600],
                          ),
                          Text(
                            "5",
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.blueGrey,
                            ),
                          ),
                        ],
                      ),
                      Spacer(),
                      Text(
                        "\$ ${food.price}",
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.red,
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          );
        });
  }
}
