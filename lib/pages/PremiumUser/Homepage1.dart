import 'package:flutter/material.dart';
import 'package:retplan/Reports.dart';
import 'package:retplan/cubit/app_cubit.dart';
import 'package:retplan/pages/Calculators.dart';
import 'package:retplan/pages/Utilites/colors.dart';
import 'package:retplan/pages/Wallet_Acc/Add_expense.dart';
import 'package:retplan/pages/create_acc_wallet.dart';
import 'package:retplan/pages/notification.dart';
import 'package:retplan/pages/note.dart';
import 'package:retplan/pages/settings.dart'; // This is to format date

class Homepage1 extends StatefulWidget {
  const Homepage1({Key? key}) : super(key: key);

  @override
  _Homepage1State createState() => _Homepage1State();
}

class _Homepage1State extends State<Homepage1> {
  @override
  Widget build(BuildContext context) {
    double sizeW = MediaQuery.of(context).size.width;
    double sizeH = MediaQuery.of(context).size.height;
    AppCubit appCubit = AppCubit.get(context);
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(children: [
        SizedBox(
          height: sizeH * 0.04,
        ),
        Center(
          child: Container(
            margin: const EdgeInsets.all(9.0),
            decoration: BoxDecoration(
              color: ColorsDesign.mainColor,
              borderRadius: BorderRadius.circular(
                  50.0), // Adjust the value as per your needs
            ),
            width: sizeW * 0.9,
            height: (sizeH * 0.3) - 9.0,
            child: Stack(
              children: [
                Align(
                  alignment: Alignment.bottomCenter,
                  child: FractionalTranslation(
                    translation: Offset(0.0,
                        0.3), // Adjust the value to move the black container down
                    child: Container(
                      decoration: BoxDecoration(
                        color: ColorsDesign.buttonBackgroundColor,
                        borderRadius: BorderRadius.circular(
                            40.0), // Adjust the value as per your needs
                        boxShadow: [
                          BoxShadow(
                            color: Color.fromARGB(130, 190, 188, 188)
                                .withOpacity(0.5),
                            spreadRadius: 3,
                            blurRadius: 7,
                            offset: Offset(0,
                                2), // Adjust the values to control the shadow position
                          ),
                        ],
                      ),
                      height: (sizeH * 0.2) - 25.8,
                      width: sizeW * 0.8,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          height: sizeH * 0.04,
        ),
        Padding(
          padding: const EdgeInsets.all(34.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                " Notes",
                style: TextStyle(
                    fontSize: sizeH * 0.03,
                    fontFamily: null,
                    fontWeight: FontWeight.bold,
                    shadows: [
                      Shadow(
                          blurRadius: 10.0,
                          color: Colors.black26,
                          offset: Offset(2.0, 2.0))
                    ],
                    color: ColorsDesign.titleColor),
              ),
              IconButton(
                  onPressed: () {
                    setState(() {
                      appCubit.createEmptyNote();
                    });
                  },
                  icon: Icon(
                    Icons.add_circle_outline_rounded,
                    color: ColorsDesign.mainColor,
                    size: 40,
                    shadows: <Shadow>[
                      Shadow(color: Colors.black26, blurRadius: 15.0)
                    ],
                  ))
            ],
          ),
        ),
        SizedBox(
          height: sizeH * 0.25,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: appCubit.savedNotes.length,
            itemBuilder: (context, index) {
              Note note = appCubit.savedNotes[index];
              TextEditingController titleController =
                  TextEditingController(text: note.title);
              TextEditingController descController =
                  TextEditingController(text: note.description);
              TextStyle titleStyle =
                  TextStyle(fontSize: 18, color: Colors.white);
              TextStyle valueStyle =
                  TextStyle(fontSize: 25, color: Colors.white);

              return SizedBox(
                width: sizeW * .5,
                height: sizeH * .3,
                child: Card(
                  color: ColorsDesign.iconColor3,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  child: Column(
                    children: [
                      // if note.isEditing == true, then it's editing
                      // when add button is clicked, it creates new note,
                      // then it shows it with editing==true (you can write in text fields)
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          // Text(
                          // intl.DateFormat.yMEd().format(note.date),
                          // ),
                          IconButton(
                            onPressed: () {
                              setState(() {
                                note.isEditing = !note.isEditing;
                              });
                              // This checks if edit button is clicked
                              // and setted the value of note.isEditing to false
                              // but the client didn't write a title or description,
                              // then it automatically deletes it.
                              if (note.isEditing == false &&
                                  note.title.isEmpty &&
                                  (note.description == null ||
                                      note.description!.isEmpty)) {
                                setState(() {
                                  appCubit.deleteNote(note);
                                });
                              }
                              //
                            },
                            icon: Icon(
                              Icons.edit,
                              shadows: <Shadow>[
                                Shadow(color: Colors.black26, blurRadius: 15.0)
                              ],
                            ),
                            color: ColorsDesign.buttonBackgroundColor,
                          ),
                          IconButton(
                              onPressed: () {
                                note.title = titleController.text;
                                note.description = descController.text;
                                note.date = DateTime.now();
                                appCubit.saveEditsNote(index, note);
                              },
                              icon: Icon(
                                Icons.save,
                                color: ColorsDesign.buttonBackgroundColor,
                                shadows: <Shadow>[
                                  Shadow(
                                      color: Colors.black26, blurRadius: 15.0)
                                ],
                              ))
                        ],
                      ),
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  "Title",
                                  style: titleStyle,
                                ),
                              ],
                            ),
                          ),
                          TextField(
                            controller: titleController,
                            enabled: note.isEditing,
                            style: valueStyle,
                            cursorColor: Colors.white,
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Text(
                            "Description",
                            style: titleStyle,
                          ),
                          TextField(
                            controller: descController,
                            enabled: note.isEditing,
                            style: valueStyle,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ]),
      bottomNavigationBar: SafeArea(
        child: Container(
          height: sizeH * 0.06,
          padding: EdgeInsets.all(3),
          margin: EdgeInsets.symmetric(
            horizontal: 36,
          ),
          decoration: BoxDecoration(
            color: ColorsDesign.mainColor.withOpacity(0.6),
            borderRadius: BorderRadius.all(Radius.circular(35)),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                height: sizeH * 0.06,
                child: IconButton(
                  icon:
                      Icon(Icons.home_rounded, size: 40, color: Colors.white70),
                  onPressed: () {
                    Homepage1();
                  },
                ),
              ),
              SizedBox(
                height: sizeH * 0.06,
                child: IconButton(
                  icon: Icon(Icons.wallet_rounded,
                      size: 40, color: Colors.white70),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => WalletPage()));
                  },
                ),
              ),
              SizedBox(
                height: sizeH * 0.06,
                child: IconButton(
                  icon: Icon(Icons.add, size: 40, color: Colors.white70),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => AddExpensePage()));
                  },
                ),
              ),
              SizedBox(
                height: sizeH * 0.06,
                child: IconButton(
                  icon: Icon(Icons.calculate_rounded,
                      size: 40, color: Colors.white70),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => CalculatorsPage()));
                  },
                ),
              ),
              SizedBox(
                height: sizeH * 0.06,
                child: IconButton(
                    icon: Icon(Icons.settings, size: 40, color: Colors.white70),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SettingsPage()));
                    }),
              )
            ],
          ),
        ),
      ),
    );
  }
}
