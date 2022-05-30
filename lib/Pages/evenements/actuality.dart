import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../constantes.dart';
import 'package:bottom_loader/bottom_loader.dart';
import 'package:action_sheet/action_sheet.dart';
import 'package:hawk_fab_menu/hawk_fab_menu.dart';
import 'package:pie_menu/pie_menu.dart';
import 'package:share_plus/share_plus.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

class Actuality extends StatefulWidget {
  const Actuality({Key? key}) : super(key: key);

  @override
  State<Actuality> createState() => _ActualityState();
}

class _ActualityState extends State<Actuality>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: contentPost(),
    );
  }
  headerPost(){
    return Padding(
      padding: const EdgeInsets.only(left: kDefaultBorderPadding, right: kDefaultBorderPadding, top: kCardPadding, bottom: kTextPadding),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // const CircleAvatar(
          //   radius: 25,
          // ),
          Container(
            height: 30,
            width: MediaQuery.of(context).size.width * 0.6,
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.grey,
              ),
              borderRadius: const BorderRadius.all(Radius.circular(20))
            ),
            child: const Center(
              child: Text(
                "Quoi de neuf ?",
                style: TextStyle(
                  color: color2,
                  fontFamily: 'PopRegular'
                ),
              ),
            ),
          ),
          const Icon(Icons.photo_library_outlined, color: color3,)
        ],
      ),
    );
  }
  contentPost(){
    return ListView.builder(
      itemCount: 5,
        itemBuilder: (context, index) =>
            cardPost()
    );
  }
  cardPost(){
    return Padding(
      padding: const EdgeInsets.only(left: kDefaultBorderPadding, right: kDefaultBorderPadding),
      child: Column(
        children: [
          ListTile(
            contentPadding: const EdgeInsets.only(left: 0, right: 0, bottom: 0, top: 0),
            leading: const CircleAvatar(
              radius: 20,
            ),
            title: const Text(
              "TCHAMDA patricia",
              softWrap: true,
                overflow: TextOverflow.ellipsis,
              style: TextStyle(
                color: color2,
                fontFamily: 'PopRegular',
                fontSize: 14
              ),
            ),
            subtitle: const Text(
              "il y'a 6 min",
              style: TextStyle(
                  color: Colors.grey,
                  fontFamily: 'PopLight',
                  fontSize: 11
              ),
            ),
            trailing: InkWell(
                child: SvgPicture.asset("assets/svg/ellipsisV.svg", height: 25, width: 30, color: color2,),
              onTap: (){
                showMaterialModalBottomSheet(
                  backgroundColor: Colors.transparent,
                  context: context,
                  builder: (context) => optionPost(),
                );
              },
            ),
          ),
          Container(
            height: 200,
            width: double.infinity,
            decoration: BoxDecoration(
                image: const DecorationImage(
                    image: AssetImage("assets/images/poste.jpg"),
                    fit: BoxFit.cover),
                color: Colors.white,
                borderRadius: BorderRadius.circular(10.0)),
          ),
          const SizedBox(
            height: 2,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: const [
                  Icon(Icons.comment_outlined, color: Colors.grey,),
                  Text(
                    "0 commentaires",
                    style: TextStyle(
                        color: color2,
                        fontFamily: 'PopLight',
                        fontSize: 13
                    ),
                  ),
                ],
              ),
              const Icon(Icons.bookmark_outline)
            ],
          )
        ],
      ),
    );
  }
  optionPost(){
    return Container(
      height: MediaQuery.of(context).size.height * 0.35,
      padding: const EdgeInsets.only(top: kDefaultPadding,),
      decoration: const BoxDecoration(
        color: firstColor,
        borderRadius:  BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20))
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Column(
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.white,
                        ),
                        borderRadius: const BorderRadius.all(Radius.circular(25))
                    ),
                    child: const Center(
                      child: Icon(Icons.link, color: Colors.white,),
                    ),
                  ),
                  const Text(
                    "Lien",
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'PopRegular',
                      fontSize: 13
                    ),
                  )
                ],
              ),
              Column(
                children: [
                  Container(
                    height: 3,
                    width: 30,
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(3)),
                        color: Colors.white
                    ),
                  ),
                  const SizedBox(height: 20,),
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.white,
                        ),
                        borderRadius: const BorderRadius.all(Radius.circular(25))
                    ),
                    child: const Center(
                      child: Icon(Icons.share, color: Colors.white,),
                    ),
                  ),
                  const Text(
                    "Partager",
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'PopRegular',
                        fontSize: 13
                    ),
                  )
                ],
              ),
              Column(
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: color1,
                        ),
                        borderRadius: const BorderRadius.all(Radius.circular(25))
                    ),
                    child: const Center(
                      child: Icon(Icons.report, color: color1,),
                    ),
                  ),
                  const Text(
                    "Signaler...",
                    style: TextStyle(
                        color: color1,
                        fontFamily: 'PopRegular',
                        fontSize: 13
                    ),
                  )
                ],
              ),
            ],
          ),
          const Padding(
            padding: EdgeInsets.only(bottom: kCardPadding, top: kCardPadding),
            child: Divider(
              height: 1,
              color: Colors.white54,
            ),
          ),
          Column(
            //mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Padding(
                padding: EdgeInsets.only(left: kCardPadding),
                child: Text(
                  "Marquer comme important",
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'PopRegular'
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: kCardPadding, top: kCardPadding),
                child: Divider(
                  height: 1,
                  color: Colors.white54,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: kCardPadding),
                child: Text(
                  "Commenter",
                  style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'PopRegular'
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: kCardPadding, top: kCardPadding),
                child: Divider(
                  height: 1,
                  color: Colors.white54,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: kCardPadding),
                child: Text(
                  "Epingler",
                  style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'PopRegular'
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
