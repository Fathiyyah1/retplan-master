import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../PremiumUser/SignUp_In/SignUp.dart';

class PremiumDetails extends StatelessWidget {
  const PremiumDetails({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Stack(
      children: [
        Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
          SizedBox(
            height: 10,
          ),
          Text("The Premium Package",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                shadows: [
                  Shadow(
                    blurRadius: 4.0,
                    color: Colors.grey,
                    offset: Offset(1.0, 1.0),
                  ),
                ],
              )),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Wrap(
                  children: List.generate(
                      5,
                      (index) => Icon(
                            Icons.star,
                            color: Color.fromARGB(255, 191, 46, 20),
                            size: 15,
                          ))),
              SizedBox(
                width: size.width * 0.1,
              ),
              Text(
                "5 stars",
              ),
              SizedBox(
                width: size.width * 0.1,
              ),
              Text(" 200+ user"),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Icon(
                Icons.account_balance_wallet_rounded,
                color: Color.fromARGB(255, 162, 123, 109),
              ),
              SizedBox(
                width: 3.0,
              ),
              Text("Choice"),
              SizedBox(
                width: size.width * 0.1,
              ),
              Icon(Icons.security_sharp,
                  color: Color.fromARGB(255, 155, 198, 144)),
              SizedBox(
                width: 3.0,
              ),
              Text("Security"),
              SizedBox(
                width: size.width * 0.1,
              ),
              Icon(Icons.list_alt_rounded,
                  color: Color.fromARGB(255, 215, 171, 14)),
              SizedBox(
                width: 3.0,
              ),
              Text("Track"),
            ],
          ),
          SizedBox(
            height: size.height * 0.04,
          ),
          Text("Features",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                shadows: [
                  Shadow(
                    blurRadius: 4.0,
                    color: Colors.grey,
                    offset: Offset(1.0, 1.0),
                  ),
                ],
              )),
          SizedBox(
            height: 30,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(
                    Icons.check,
                    color: Color.fromARGB(255, 240, 55, 55),
                  ),
                  Text(
                    " Secure your data by a Passcode.",
                    style: TextStyle(
                      shadows: [
                        Shadow(
                          blurRadius: 4.0,
                          color: Colors.grey,
                          offset: Offset(1.0, 1.0),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 12,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(
                    Icons.check,
                    color: Color.fromARGB(255, 240, 55, 55),
                  ),
                  Text(
                    " Record expenses and income easily.",
                    style: TextStyle(
                      shadows: [
                        Shadow(
                          blurRadius: 4.0,
                          color: Colors.grey,
                          offset: Offset(1.0, 1.0),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 12,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(
                    Icons.check,
                    color: Color.fromARGB(255, 240, 55, 55),
                  ),
                  Text(
                    " Calculate your expenses for you.",
                    style: TextStyle(
                      shadows: [
                        Shadow(
                          blurRadius: 4.0,
                          color: Colors.grey,
                          offset: Offset(1.0, 1.0),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 12,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(
                    Icons.check,
                    color: Color.fromARGB(255, 240, 55, 55),
                  ),
                  Text(
                    " Stay on track with customized reminders.",
                    style: TextStyle(
                      shadows: [
                        Shadow(
                          blurRadius: 4.0,
                          color: Colors.grey,
                          offset: Offset(1.0, 1.0),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(
            height: size.height * 0.08,
          ),
          ElevatedButton(
            child: Text(
              "Join Now",
              style: TextStyle(
                  color: Colors.white, fontSize: 25, fontFamily: 'Roboto'),
            ).paddingAll(20),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SignUp()),
              );
            },
            style: ElevatedButton.styleFrom(
              primary: Color.fromARGB(255, 79, 141, 122),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(35),
              ),
            ),
          ),
        ]),
      ],
    );
  }
}
