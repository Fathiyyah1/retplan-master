import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:retplan/pages/PremiumUser/SignUp_In/SignUp.dart';
import 'package:retplan/pages/Utilites/dimensions.dart';

import 'options_details/free_details.dart';
import 'options_details/premium_details.dart';

class PaginationPage extends StatefulWidget {
  const PaginationPage({Key? key}) : super(key: key);

  @override
  State<PaginationPage> createState() => _PaginationPageState();
}

class _PaginationPageState extends State<PaginationPage> {
  int currentPage = 0;
  late String selectedOption;

  @override
  void initState() {
    super.initState();
    selectedOption = "";
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 87, 206, 176),
      body: PageView(
        scrollDirection: Axis.horizontal,
        // reverse: true,
        physics: BouncingScrollPhysics(),
        // pageSnapping: false,
        onPageChanged: (index) {
          setState(() {
            currentPage = index;
          });
        },
        children: [
          buildPaginationImage(
              "assets/images/free-money-sack-4257257-3527402.png",
              "Retire With Peace Of Mind"),
          buildPaginationImage("assets/images/bankrupt.png",
              "Invest Wisely Prosper Consistently"),
          // Column(
          //   mainAxisAlignment: MainAxisAlignment.center,
          //   children: [
          //     Image.asset(
          //       "assets/images/bankrupt.png",
          //       height: 160,
          //       width: 160,
          //       fit: BoxFit.cover,
          //     ),
          //     SizedBox(
          //       height: 20,
          //     ),
          //     Text(
          //       "Invest Wisely Prosper Consistently",
          //       style: TextStyle(
          //         fontSize: 23,
          //       ),
          //     ),
          //     Padding(
          //         padding: EdgeInsets.symmetric(vertical: 40.0), child: row())
          //   ],
          // ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "assets/images/money.png",
                height: 160,
                width: 160,
                fit: BoxFit.cover,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Say Goodbye To Overspending",
                style: TextStyle(fontSize: 23),
              ),
              Padding(
                  padding: EdgeInsets.symmetric(vertical: 40.0), child: row()),
              /*
               Padding(
                padding: EdgeInsets.only(top: 40.0),
                child: Icon(
                  Icons.swipe_left,
                  size: 30,
                ),
              ),
               */
            ],
          ),
          Stack(
            children: [
              ChoosingTopImage(),
              Positioned(
                left: 0,
                right: 0,
                top: size.height * 0.2,
                child: buildPageBody(size, context),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Column buildPaginationImage(String path, String text) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          path,
          height: 160,
          width: 160,
          fit: BoxFit.cover,
        ),
        Text(
          text,
          style: TextStyle(fontSize: 23),
        ),
        Padding(padding: EdgeInsets.symmetric(vertical: 40.0), child: row())
      ],
    );
  }

  Container buildPageBody(Size size, BuildContext context) {
    return Container(
      padding: EdgeInsets.all(size.width * 0.1),
      height: size.height - (size.height * 0.2),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Color.fromARGB(255, 255, 255, 255),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              GestureDetector(
                onTap: () {
                  setState(() {
                    selectedOption = 'Free';
                  });
                },
                child: Container(
                  child: Center(
                    child: Text(
                      "Free",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: selectedOption == 'Free'
                            ? Colors.black
                            : Colors.black,
                      ),
                    ),
                  ),
                  decoration: BoxDecoration(
                    color: selectedOption == 'Free'
                        ? Color.fromARGB(78, 97, 152, 134)
                        : Colors.white,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  padding: EdgeInsets.symmetric(
                    vertical: 10,
                    horizontal: 20,
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    selectedOption = 'Premium';
                  });
                },
                child: Container(
                  child: Center(
                    child: Text(
                      "Premium",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: selectedOption == 'Premium'
                            ? Colors.black
                            : Colors.black,
                      ),
                    ),
                  ),
                  decoration: BoxDecoration(
                    color: selectedOption == 'Premium'
                        ? Color.fromARGB(78, 97, 152, 134)
                        : Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  padding: EdgeInsets.symmetric(
                    vertical: 10,
                    horizontal: 20,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 38),
          selectedOption == 'Free' ? FreeDetails() : PremiumDetails(),
        ],
      ),
    );
  }

  Widget row() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        currentPage == 0
            ? Icon(Icons.circle,
                size: 10, color: Color.fromARGB(255, 33, 110, 82))
            : Icon(
                Icons.circle,
                size: 10,
                color: Color.fromARGB(255, 160, 221, 202),
              ),
        currentPage == 1
            ? Icon(Icons.circle,
                size: 10, color: Color.fromARGB(255, 33, 110, 82))
            : Icon(
                Icons.circle,
                size: 10,
                color: Color.fromARGB(255, 160, 221, 202),
              ),
        currentPage == 2
            ? Icon(Icons.circle,
                size: 10, color: Color.fromARGB(255, 33, 110, 82))
            : Icon(
                Icons.circle,
                size: 10,
                color: Color.fromARGB(255, 160, 221, 202),
              ),
        currentPage == 3
            ? Icon(Icons.circle,
                size: 10, color: Color.fromARGB(255, 33, 110, 82))
            : Icon(
                Icons.circle,
                size: 10,
                color: Color.fromARGB(255, 160, 221, 202),
              )
      ],
    );
  }
}

class ChoosingTopImage extends StatelessWidget {
  const ChoosingTopImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
        left: 0,
        right: 0,
        child: Container(
          width: double.maxFinite,
          height: 350,
          decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image:
                      AssetImage("assets/images/Choose what suits you.png"))),
        ));
  }
}
