import 'package:flutter/material.dart';
import 'package:focused_menu/modals.dart';
import 'package:myislape/constantes.dart';
import 'package:myislape/generated/l10n.dart';
import 'package:provider/provider.dart';
import 'package:focused_menu/focused_menu.dart';
import 'package:stacked_notification_cards/stacked_notification_cards.dart';

import '../Providers/LanguageChangeProvider.dart';
import 'infopersonnelle/information.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  String currentlanguage = "Français";
  List<String> langues = ["Français", "Anglais"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: firstColor,
        title: const Text(
          "MyIslape",
          style: TextStyle(
            color: Colors.white,
            fontFamily: 'PopRegular',
            fontSize: 20,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            cardProfile(),
            const SizedBox(height: 10,),
            cardMenu(),
          ],
        ),
      ),
    );
  }


  cardProfile(){
    return Column(
      children: [
        const SizedBox(height: 20,),
        const CircleAvatar(
          radius: 50,
        ),
        const Text(
          "TCHATCHO KEMAJOU",
          style: TextStyle(
              fontFamily: 'PopRegular',
              color: color2,
              fontSize: 15
          ),
        ),
        const Text(
          "Franck Donald",
          style: TextStyle(
              fontFamily: 'PopRegular',
              color: Colors.grey,
              fontSize: 15
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              children: [
                Text(
                  S.of(context).spacialite,
                  style: const TextStyle(
                      fontFamily: 'PopRegular',
                      color: Colors.black,
                      fontSize: 15
                  ),
                ),
                const Card(
                  child: Padding(
                    padding: EdgeInsets.only(left: kDefaultPadding, right: kDefaultPadding, top: kCardPadding, bottom: kCardPadding),
                    child: Text(
                      "GL",
                      style: TextStyle(
                          fontFamily: 'PopRegular',
                          color: secondColor,
                          fontSize: 15
                      ),
                    ),
                  ),
                )
              ],
            ),
            Column(
              children: [
                Text(
                  S.of(context).niveau,
                  style: const TextStyle(
                      fontFamily: 'PopRegular',
                      color: Colors.black,
                      fontSize: 15
                  ),
                ),
                const Card(
                  child: Padding(
                    padding: EdgeInsets.only(left: kDefaultPadding, right: kDefaultPadding, top: kCardPadding, bottom: kCardPadding),
                    child: Text(
                      "3",
                      style: TextStyle(
                        fontFamily: 'PopRegular',
                        color: secondColor,
                        fontSize: 15
                      ),
                    ),
                  ),
                )
              ],
            )
          ],
        )
      ],
    );
  }

  cardMenu(){
    return Column(
      children: [
        Card(
          margin: const EdgeInsets.only(left: kDefaultPadding, right: kDefaultPadding, bottom: kCardPadding),
          elevation: 5.0,
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(5))
          ),
          child: Padding(
            padding: const EdgeInsets.only(left: kCardPadding, right: kCardPadding),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    const Icon(
                      Icons.translate,
                      color: color2,
                    ),
                    const SizedBox(
                      width: 6,
                    ),
                    Text(
                      S.of(context).langue,
                      style: const TextStyle(
                        color: color2,
                        fontSize: 15,
                        fontFamily: 'PopRegular',
                      ),
                    ),
                  ],
                ),
                Consumer<LanguageChangeProvider>(
                    builder: (context, value, child){
                      return DropdownButton<String>(
                        value: value.currentLocaleName,
                        dropdownColor: Colors.white,
                        icon: const Padding(
                          padding: EdgeInsets.only(left: 4),
                          child: Icon(
                            Icons.keyboard_arrow_down,
                            color: color2,
                            size: 18,
                          ),
                        ),
                        iconSize: 24,
                        //elevation: 16,
                        underline: Container(
                          height: 1,
                          color: Colors.white,
                        ),
                        style: const TextStyle(
                          color: color2,
                          fontSize: 15,
                          fontFamily: 'PopRegular',
                        ),
                        onChanged: (e) async {
                          setState(() {
                            currentlanguage = e!;
                          });
                          switch (e!) {
                            case "Français":
                              value.changeLocale("fr", "Français");
                              //await videosProviders.allMovies(1);
                              break;

                            case "Anglais":
                              value.changeLocale("en", "Anglais");
                              //await videosProviders.allMovies(1);
                              break;
                          }
                        },
                        items: langues
                            .map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                      );
                    }
                ),
              ],
            ),
          ),
        ),
        InkWell(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => const Information()));
          },
          child: Card(
            margin: const EdgeInsets.only(left: kDefaultPadding, right: kDefaultPadding, bottom: kCardPadding),
            elevation: 5.0,
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(5))
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: kCardPadding, right: kCardPadding, top: kCardPadding, bottom: kCardPadding),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      const Icon(
                        Icons.person_outline,
                        color: color2,
                      ),
                      const SizedBox(
                        width: 6,
                      ),
                      Text(
                        S.of(context).information,
                        style: const TextStyle(
                          color: color2,
                          fontSize: 15,
                          fontFamily: 'PopRegular',
                        ),
                      ),
                    ],
                  ),
                  const Icon(
                    Icons.arrow_forward_ios,
                    color: color2,
                    size: 15,
                  ),
                ],
              ),
            ),
          ),
        ),
        FocusedMenuHolder(
          menuWidth: MediaQuery.of(context).size.width*0.50,
          blurSize: .0,
          menuItemExtent: 45,
          menuBoxDecoration: BoxDecoration(color: Colors.grey,borderRadius: const BorderRadius.all(Radius.circular(15.0))),
          duration: const Duration(milliseconds: 100),
          animateMenuItems: true,
          blurBackgroundColor: Colors.transparent,
          openWithTap: true, // Open Focused-Menu on Tap rather than Long Press
          menuOffset: 10.0, // Offset value to show menuItem from the selected item
          bottomOffsetHeight: 80.0,
          menuItems: <FocusedMenuItem>[
            FocusedMenuItem(title: const Text("Scolarité"),trailingIcon: const Icon(Icons.school_outlined) ,onPressed: (){
              //Navigator.push(context, MaterialPageRoute(builder: (context)=>ScreenTwo()));
            }),
            FocusedMenuItem(title: const Text("Frais médicaux"),trailingIcon: const Icon(Icons.local_hospital_outlined) ,onPressed: (){}),
            FocusedMenuItem(title: const Text("Encadrement"),trailingIcon: const Icon(Icons.manage_accounts_outlined) ,onPressed: (){}),
            FocusedMenuItem(title: const Text("Frais divers",style: TextStyle(color: Colors.redAccent),),trailingIcon: const Icon(Icons.other_houses_sharp, color: Colors.redAccent,) ,onPressed: (){}),
          ],
          onPressed: (){

          },
          child: Card(
            margin: const EdgeInsets.only(left: kDefaultPadding, right: kDefaultPadding, bottom: kCardPadding),
            elevation: 5.0,
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(5))
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: kCardPadding, right: kCardPadding, top: kCardPadding, bottom: kCardPadding),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      const Icon(
                        Icons.attach_money,
                        color: color2,
                      ),
                      const SizedBox(
                        width: 6,
                      ),
                      Text(
                        S.of(context).finance,
                        style: const TextStyle(
                          color: color2,
                          fontSize: 15,
                          fontFamily: 'PopRegular',
                        ),
                      ),
                    ],
                  ),
                  const Icon(
                    Icons.arrow_forward_ios,
                    color: color2,
                    size: 15,
                  ),
                ],
              ),
            ),
          ),
        ),
        Card(
          margin: const EdgeInsets.only(left: kDefaultPadding, right: kDefaultPadding, bottom: kCardPadding),
          elevation: 5.0,
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(5))
          ),
          child: Padding(
            padding: const EdgeInsets.only(left: kCardPadding, right: kCardPadding, top: kCardPadding, bottom: kCardPadding),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    const Icon(
                      Icons.school_outlined,
                      color: color2,
                    ),
                    const SizedBox(
                      width: 6,
                    ),
                    Text(
                      S.of(context).soutenance,
                      style: const TextStyle(
                        color: color2,
                        fontSize: 15,
                        fontFamily: 'PopRegular',
                      ),
                    ),
                  ],
                ),
                const Icon(
                  Icons.arrow_forward_ios,
                  color: color2,
                  size: 15,
                ),
              ],
            ),
          ),
        ),
        FocusedMenuHolder(
          menuWidth: MediaQuery.of(context).size.width*0.60,
          blurSize: .0,
          menuItemExtent: 45,
          menuBoxDecoration: const BoxDecoration(color: Colors.grey,borderRadius: BorderRadius.all(Radius.circular(15.0))),
          duration: const Duration(milliseconds: 100),
          animateMenuItems: true,
          blurBackgroundColor: Colors.black54,
          openWithTap: true, // Open Focused-Menu on Tap rather than Long Press
          menuOffset: 10.0, // Offset value to show menuItem from the selected item
          bottomOffsetHeight: 80.0,
          menuItems: <FocusedMenuItem>[
            FocusedMenuItem(title: const Text("Rélever de note"),trailingIcon: const Icon(Icons.school_outlined) ,onPressed: (){
              //Navigator.push(context, MaterialPageRoute(builder: (context)=>ScreenTwo()));
            }),
            FocusedMenuItem(title: const Text("Certificat de scolarité"),trailingIcon: const Icon(Icons.local_hospital_outlined) ,onPressed: (){}),
            FocusedMenuItem(title: const Text("Recommandation"),trailingIcon: const Icon(Icons.manage_accounts_outlined) ,onPressed: (){}),
            FocusedMenuItem(title: const Text("Frais divers",style: TextStyle(color: Colors.redAccent),),trailingIcon: const Icon(Icons.other_houses_sharp, color: Colors.redAccent,) ,onPressed: (){}),
          ],
          onPressed: (){

          },
          child: Card(
            margin: const EdgeInsets.only(left: kDefaultPadding, right: kDefaultPadding, bottom: kCardPadding),
            elevation: 5.0,
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(5))
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: kCardPadding, right: kCardPadding, top: kCardPadding, bottom: kCardPadding),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      const Icon(
                        Icons.bookmarks_outlined,
                        color: color2,
                      ),
                      const SizedBox(
                        width: 6,
                      ),
                      Text(
                        S.of(context).documents,
                        style: const TextStyle(
                          color: color2,
                          fontSize: 15,
                          fontFamily: 'PopRegular',
                        ),
                      ),
                    ],
                  ),
                  const Icon(
                    Icons.arrow_forward_ios,
                    color: color2,
                    size: 15,
                  ),
                ],
              ),
            ),
          ),
        ),
        Column(
          children: [
            InkWell(
              onTap: () async{
              },
              child: Text(
                S.of(context).deconnexion,
                style: const TextStyle(
                  color: color1,
                  fontSize: 15,
                  fontFamily: 'PopBold',
                ),
              ),
            ),
            const SizedBox(height: 12,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Icon(Icons.copyright, color: Colors.grey,),
                Text(
                  "Emperor Technologie",
                  style: TextStyle(
                      color: Colors.grey,
                      fontSize: 15,
                      fontFamily: 'PopBold'
                  ),
                ),
              ],
            ),
          ],
        )
      ],
    );
  }
}
