import 'package:action_sheet/action_sheet.dart';
import 'package:flutter/material.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:myislape/Services/notificationservice.dart';
import 'package:myislape/constantes.dart';
import 'package:myislape/generated/l10n.dart';

class NormalSession extends StatefulWidget {
  const NormalSession({Key? key}) : super(key: key);

  @override
  State<NormalSession> createState() => _NormalSessionState();
}

class _NormalSessionState extends State<NormalSession> {
  NotificationService notificationService = NotificationService();

  @override
  Widget build(BuildContext context) {
    return examsResultList();
  }
  examsResultList(){
    return ListView.builder(
      physics: const BouncingScrollPhysics(),
      padding: const EdgeInsets.only(top: kDefaultPadding),
        itemCount: 5,
        itemBuilder: (context, index) =>
        noteCard()
    );
  }

  noteCard(){
    return InkWell(
      onTap: (){
        //notificationService.instantNofitication("title", "message");
        showMaterialModalBottomSheet(
          backgroundColor: Colors.transparent,
          context: context,
          builder: (context) => examsResult(),
        );
      },
      child: Card(
        margin: const EdgeInsets.only(left: kCardPadding, right: kCardPadding, bottom: kCardPadding),
        elevation: 5.0,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(5))
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: kTextPadding, horizontal: kCardPadding),
          child: SizedBox(
            height: 65,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.65,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Programmation Web",
                        softWrap: true,
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                        style: TextStyle(
                          fontFamily: 'PopBold',
                          fontSize: 15
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: const [
                              Text(
                                "CC",
                                style: TextStyle(
                                  color: color2,
                                  fontFamily: 'PopRegular',
                                  fontSize: 12,
                                ),
                              ),
                              Text(
                                "05",
                                style: TextStyle(
                                  color: secondColor,
                                  fontFamily: 'PopRegular',
                                  fontSize: 15,
                                ),
                              )
                            ],
                          ),
                          Column(
                            children: const [
                              Text(
                                "EX",
                                style: TextStyle(
                                  color: color2,
                                  fontFamily: 'PopRegular',
                                  fontSize: 12,
                                ),
                              ),
                              Text(
                                "05",
                                style: TextStyle(
                                  color: secondColor,
                                  fontFamily: 'PopRegular',
                                  fontSize: 15,
                                ),
                              )
                            ],
                          ),
                          Column(
                            children: const [
                              Text(
                                "Moy/20",
                                style: TextStyle(
                                  color: color2,
                                  fontFamily: 'PopRegular',
                                  fontSize: 12,
                                ),
                              ),
                              Text(
                                "05",
                                style: TextStyle(
                                  color: secondColor,
                                  fontFamily: 'PopRegular',
                                  fontSize: 15,
                                ),
                              )
                            ],
                          ),
                          Column(
                            children: const [
                              Text(
                                "CA",
                                style: TextStyle(
                                  color: color2,
                                  fontFamily: 'PopRegular',
                                  fontSize: 12,
                                ),
                              ),
                              Text(
                                "5",
                                style: TextStyle(
                                  color: secondColor,
                                  fontFamily: 'PopRegular',
                                  fontSize: 15,
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                ),

                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.2,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: kTextPadding, top: kTextPadding, bottom: kTextPadding),
                        child: Container(
                          height: double.infinity,
                          width: 2,
                          color: secondColor,
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            S.of(context).decision,
                            style: const TextStyle(
                              decoration: TextDecoration.underline,
                              color: color2,
                              fontFamily: 'PopRegular',
                            ),
                          ),
                          const Text(
                            "AC",
                            style: TextStyle(
                              color: secondColor,
                              fontFamily: 'PopBold',
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
  examsResult(){
    return Container(
      height: MediaQuery.of(context).size.height * 0.25,
      padding: const EdgeInsets.only(top: kDefaultPadding, bottom: kDefaultPadding),
      decoration: const BoxDecoration(
          color: firstColor,
          borderRadius:  BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20))
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text(
            "Resultats",
            style: TextStyle(
              color: Colors.white,
              fontFamily: 'PopRegular',
              fontSize: 14
            ),
          ),
          const SizedBox(height: 25,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.white,
                        ),
                        borderRadius: const BorderRadius.all(Radius.circular(30))
                    ),
                    child: const Center(
                      child: Text(
                        "12.5/20",
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'PopRegular',
                            fontSize: 13
                        ),
                      ),
                    ),
                  ),
                  const Text(
                    "Moyenne",
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'PopRegular',
                        fontSize: 14
                    ),
                  )
                ],
              ),
              Column(
                children: [
                  // Container(
                  //   height: 3,
                  //   width: 30,
                  //   decoration: const BoxDecoration(
                  //       borderRadius: BorderRadius.all(Radius.circular(3)),
                  //       color: Colors.white
                  //   ),
                  // ),
                  //const SizedBox(height: 25,),
                  Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.white,
                        ),
                        borderRadius: const BorderRadius.all(Radius.circular(30))
                    ),
                    child: const Center(
                      child: Text(
                        "9/12",
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'PopRegular',
                            fontSize: 13
                        ),
                      ),
                    ),
                  ),
                  const Text(
                    "Valider",
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'PopRegular',
                        fontSize: 14
                    ),
                  )
                ],
              ),
              Column(
                children: [
                  Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.white,
                        ),
                        borderRadius: const BorderRadius.all(Radius.circular(30))
                    ),
                    child: const Center(
                      child: Text(
                        "17/24",
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'PopRegular',
                            fontSize: 13
                        ),
                      ),
                    ),
                  ),
                  const Text(
                    "Crédits",
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'PopRegular',
                        fontSize: 14
                    ),
                  )
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
