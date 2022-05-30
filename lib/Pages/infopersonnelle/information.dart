import 'package:flutter/material.dart';

import '../../constantes.dart';

class Information extends StatefulWidget {
  const Information({Key? key}) : super(key: key);

  @override
  State<Information> createState() => _InformationState();
}

class _InformationState extends State<Information> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: firstColor,
        elevation: .0,
        title: const Text(
          "Données personnelles",
          style: TextStyle(
            color: Colors.white,
            fontFamily: 'PopRegular',
            fontSize: 18,
          ),
        ),
      ),
      body: Column(
        children: [
          const SizedBox(height:  kDefaultPadding,),
          matriculeCard(),
          const Padding(
              padding: EdgeInsets.only(left: kDefaultPadding, right: kDefaultPadding, bottom: kCardPadding),
            child: Divider(
              height: 3,
              thickness: 5.0,
            ),
          ),
          Expanded(
              child: SingleChildScrollView(
                child: informationCard(),
              )
          ),
        ],
      ),
    );
  }

  informationCard(){
    return Padding(
      padding: const EdgeInsets.only(left: kDefaultPadding, right: kDefaultPadding, top: kDefaultPadding),
      child: Column(
        children: [
          TextFormField(
            keyboardType: TextInputType.text,
            onChanged: (e) {
              //userprovider.Changeemail = e;
            },
            initialValue: "TCHATCHO KEMAJOU",
           // validator: (e) => e!.isEmpty ? "email incorrect" : null,
            maxLines: 1,
            style: const TextStyle(
                color: color2,
                fontFamily: 'PopLight'
            ),
            decoration: const InputDecoration(
              hoverColor: Colors.grey,
              // hintText: 'login',
              // hintStyle: TextStyle(
              //   color: Colors.white54,
              // ),
              labelText: 'Nom',
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                  borderSide: BorderSide(
                      color: Colors.grey
                  )
              ),
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                  borderSide: BorderSide(
                      color: color2
                  )
              ),
              labelStyle: TextStyle(
                color: color2,
                fontFamily: 'PopRegular'
              ),
              isDense: true,                      // Added this
              contentPadding: EdgeInsets.all(10),
              //hintText: "login",
              suffixIcon: Icon(Icons.person_outline, color: thirdColor,),
              //suffixStyle: ,
              floatingLabelBehavior: FloatingLabelBehavior.auto,
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(5))
              ),
            ),
          ),
          const SizedBox(height: kDefaultPadding,),
          TextFormField(
            keyboardType: TextInputType.text,
            onChanged: (e) {
              //userprovider.Changeemail = e;
            },
            initialValue: "TCHATCHO KEMAJOU",
            // validator: (e) => e!.isEmpty ? "email incorrect" : null,
            maxLines: 1,
            style: const TextStyle(
                color: color2,
                fontFamily: 'PopLight'
            ),
            decoration: const InputDecoration(
              hoverColor: Colors.grey,
              // hintText: 'login',
              // hintStyle: TextStyle(
              //   color: Colors.white54,
              // ),
              labelText: 'Nom',
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                  borderSide: BorderSide(
                      color: Colors.grey
                  )
              ),
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                  borderSide: BorderSide(
                      color: color2
                  )
              ),
              labelStyle: TextStyle(
                  color: color2,
                  fontFamily: 'PopRegular'
              ),
              isDense: true,                      // Added this
              contentPadding: EdgeInsets.all(10),
              //hintText: "login",
              suffixIcon: Icon(Icons.person_outline, color: thirdColor,),
              //suffixStyle: ,
              floatingLabelBehavior: FloatingLabelBehavior.auto,
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(5))
              ),
            ),
          ),
          const SizedBox(height: kDefaultPadding,),
          TextFormField(
            keyboardType: TextInputType.text,
            onChanged: (e) {
              //userprovider.Changeemail = e;
            },
            initialValue: "TCHATCHO KEMAJOU",
            // validator: (e) => e!.isEmpty ? "email incorrect" : null,
            maxLines: 1,
            style: const TextStyle(
                color: color2,
                fontFamily: 'PopLight'
            ),
            decoration: const InputDecoration(
              hoverColor: Colors.grey,
              // hintText: 'login',
              // hintStyle: TextStyle(
              //   color: Colors.white54,
              // ),
              labelText: 'Nom',
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                  borderSide: BorderSide(
                      color: Colors.grey
                  )
              ),
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                  borderSide: BorderSide(
                      color: color2
                  )
              ),
              labelStyle: TextStyle(
                  color: color2,
                  fontFamily: 'PopRegular'
              ),
              isDense: true,                      // Added this
              contentPadding: EdgeInsets.all(10),
              //hintText: "login",
              suffixIcon: Icon(Icons.person_outline, color: thirdColor,),
              //suffixStyle: ,
              floatingLabelBehavior: FloatingLabelBehavior.auto,
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(5))
              ),
            ),
          ),
          const SizedBox(height: kDefaultPadding,),
          TextFormField(
            keyboardType: TextInputType.text,
            onChanged: (e) {
              //userprovider.Changeemail = e;
            },
            initialValue: "TCHATCHO KEMAJOU",
            // validator: (e) => e!.isEmpty ? "email incorrect" : null,
            maxLines: 1,
            style: const TextStyle(
                color: color2,
                fontFamily: 'PopLight'
            ),
            decoration: const InputDecoration(
              hoverColor: Colors.grey,
              // hintText: 'login',
              // hintStyle: TextStyle(
              //   color: Colors.white54,
              // ),
              labelText: 'Nom',
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                  borderSide: BorderSide(
                      color: Colors.grey
                  )
              ),
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                  borderSide: BorderSide(
                      color: color2
                  )
              ),
              labelStyle: TextStyle(
                  color: color2,
                  fontFamily: 'PopRegular'
              ),
              isDense: true,                      // Added this
              contentPadding: EdgeInsets.all(10),
              //hintText: "login",
              suffixIcon: Icon(Icons.person_outline, color: thirdColor,),
              //suffixStyle: ,
              floatingLabelBehavior: FloatingLabelBehavior.auto,
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(5))
              ),
            ),
          ),
          const SizedBox(height: kDefaultPadding,),
          TextFormField(
            keyboardType: TextInputType.text,
            onChanged: (e) {
              //userprovider.Changeemail = e;
            },
            initialValue: "TCHATCHO KEMAJOU",
            // validator: (e) => e!.isEmpty ? "email incorrect" : null,
            maxLines: 1,
            style: const TextStyle(
                color: color2,
                fontFamily: 'PopLight'
            ),
            decoration: const InputDecoration(
              hoverColor: Colors.grey,
              // hintText: 'login',
              // hintStyle: TextStyle(
              //   color: Colors.white54,
              // ),
              labelText: 'Nom',
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                  borderSide: BorderSide(
                      color: Colors.grey
                  )
              ),
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                  borderSide: BorderSide(
                      color: color2
                  )
              ),
              labelStyle: TextStyle(
                  color: color2,
                  fontFamily: 'PopRegular'
              ),
              isDense: true,                      // Added this
              contentPadding: EdgeInsets.all(10),
              //hintText: "login",
              suffixIcon: Icon(Icons.person_outline, color: thirdColor,),
              //suffixStyle: ,
              floatingLabelBehavior: FloatingLabelBehavior.auto,
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(5))
              ),
            ),
          ),
          const SizedBox(height: kDefaultPadding,),
          TextFormField(
            keyboardType: TextInputType.text,
            onChanged: (e) {
              //userprovider.Changeemail = e;
            },
            initialValue: "TCHATCHO KEMAJOU",
            // validator: (e) => e!.isEmpty ? "email incorrect" : null,
            maxLines: 1,
            style: const TextStyle(
                color: color2,
                fontFamily: 'PopLight'
            ),
            decoration: const InputDecoration(
              hoverColor: Colors.grey,
              // hintText: 'login',
              // hintStyle: TextStyle(
              //   color: Colors.white54,
              // ),
              labelText: 'Nom',
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                  borderSide: BorderSide(
                      color: Colors.grey
                  )
              ),
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                  borderSide: BorderSide(
                      color: color2
                  )
              ),
              labelStyle: TextStyle(
                  color: color2,
                  fontFamily: 'PopRegular'
              ),
              isDense: true,                      // Added this
              contentPadding: EdgeInsets.all(10),
              //hintText: "login",
              suffixIcon: Icon(Icons.person_outline, color: thirdColor,),
              //suffixStyle: ,
              floatingLabelBehavior: FloatingLabelBehavior.auto,
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(5))
              ),
            ),
          ),
          const SizedBox(height: kDefaultPadding,),
          TextFormField(
            keyboardType: TextInputType.text,
            onChanged: (e) {
              //userprovider.Changeemail = e;
            },
            initialValue: "TCHATCHO KEMAJOU",
            // validator: (e) => e!.isEmpty ? "email incorrect" : null,
            maxLines: 1,
            style: const TextStyle(
                color: color2,
                fontFamily: 'PopLight'
            ),
            decoration: const InputDecoration(
              hoverColor: Colors.grey,
              // hintText: 'login',
              // hintStyle: TextStyle(
              //   color: Colors.white54,
              // ),
              labelText: 'Nom',
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                  borderSide: BorderSide(
                      color: Colors.grey
                  )
              ),
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                  borderSide: BorderSide(
                      color: color2
                  )
              ),
              labelStyle: TextStyle(
                  color: color2,
                  fontFamily: 'PopRegular'
              ),
              isDense: true,                      // Added this
              contentPadding: EdgeInsets.all(10),
              //hintText: "login",
              suffixIcon: Icon(Icons.person_outline, color: thirdColor,),
              //suffixStyle: ,
              floatingLabelBehavior: FloatingLabelBehavior.auto,
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(5))
              ),
            ),
          ),
          const SizedBox(height: kDefaultPadding,),
          TextFormField(
            keyboardType: TextInputType.text,
            onChanged: (e) {
              //userprovider.Changeemail = e;
            },
            initialValue: "TCHATCHO KEMAJOU",
            // validator: (e) => e!.isEmpty ? "email incorrect" : null,
            maxLines: 1,
            style: const TextStyle(
                color: color2,
                fontFamily: 'PopLight'
            ),
            decoration: const InputDecoration(
              hoverColor: Colors.grey,
              // hintText: 'login',
              // hintStyle: TextStyle(
              //   color: Colors.white54,
              // ),
              labelText: 'Nom',
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                  borderSide: BorderSide(
                      color: Colors.grey
                  )
              ),
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                  borderSide: BorderSide(
                      color: color2
                  )
              ),
              labelStyle: TextStyle(
                  color: color2,
                  fontFamily: 'PopRegular'
              ),
              isDense: true,                      // Added this
              contentPadding: EdgeInsets.all(10),
              //hintText: "login",
              suffixIcon: Icon(Icons.person_outline, color: thirdColor,),
              //suffixStyle: ,
              floatingLabelBehavior: FloatingLabelBehavior.auto,
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(5))
              ),
            ),
          ),
          const SizedBox(height: kDefaultPadding,),
          TextFormField(
            keyboardType: TextInputType.text,
            onChanged: (e) {
              //userprovider.Changeemail = e;
            },
            initialValue: "TCHATCHO KEMAJOU",
            // validator: (e) => e!.isEmpty ? "email incorrect" : null,
            maxLines: 1,
            style: const TextStyle(
                color: color2,
                fontFamily: 'PopLight'
            ),
            decoration: const InputDecoration(
              hoverColor: Colors.grey,
              // hintText: 'login',
              // hintStyle: TextStyle(
              //   color: Colors.white54,
              // ),
              labelText: 'Nom',
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                  borderSide: BorderSide(
                      color: Colors.grey
                  )
              ),
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                  borderSide: BorderSide(
                      color: color2
                  )
              ),
              labelStyle: TextStyle(
                  color: color2,
                  fontFamily: 'PopRegular'
              ),
              isDense: true,                      // Added this
              contentPadding: EdgeInsets.all(10),
              //hintText: "login",
              suffixIcon: Icon(Icons.person_outline, color: thirdColor,),
              //suffixStyle: ,
              floatingLabelBehavior: FloatingLabelBehavior.auto,
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(5))
              ),
            ),
          ),
          const SizedBox(height: kDefaultPadding,),
          TextFormField(
            keyboardType: TextInputType.text,
            onChanged: (e) {
              //userprovider.Changeemail = e;
            },
            initialValue: "TCHATCHO KEMAJOU",
            // validator: (e) => e!.isEmpty ? "email incorrect" : null,
            maxLines: 1,
            style: const TextStyle(
                color: color2,
                fontFamily: 'PopLight'
            ),
            decoration: const InputDecoration(
              hoverColor: Colors.grey,
              // hintText: 'login',
              // hintStyle: TextStyle(
              //   color: Colors.white54,
              // ),
              labelText: 'Nom',
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                  borderSide: BorderSide(
                      color: Colors.grey
                  )
              ),
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                  borderSide: BorderSide(
                      color: color2
                  )
              ),
              labelStyle: TextStyle(
                  color: color2,
                  fontFamily: 'PopRegular'
              ),
              isDense: true,                      // Added this
              contentPadding: EdgeInsets.all(10),
              //hintText: "login",
              suffixIcon: Icon(Icons.person_outline, color: thirdColor,),
              //suffixStyle: ,
              floatingLabelBehavior: FloatingLabelBehavior.auto,
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(5))
              ),
            ),
          ),
        ],
      ),
    );
  }

  matriculeCard(){
    return Card(
      margin: const EdgeInsets.only(left: kDefaultPadding, right: kDefaultPadding, bottom: kCardPadding),
      elevation: .0,
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(5))
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: kCardPadding, right: kCardPadding, top: kCardPadding, bottom: kCardPadding),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: const [
                Icon(
                  Icons.perm_identity,
                  color: color2,
                ),
                SizedBox(
                  width: 6,
                ),
                Text(
                  "Matricule :",
                  style: TextStyle(
                    color: color2,
                    fontSize: 15,
                    fontFamily: 'PopRegular',
                  ),
                ),
              ],
            ),
            const Text(
              "21GL001",
              style: TextStyle(
                color: color1
              ),
            ),
          ],
        ),
      ),
    );
  }
}
