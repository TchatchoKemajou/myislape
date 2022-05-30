import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:myislape/Services/notificationservice.dart';
import 'package:myislape/containerpage.dart';
import 'package:provider/provider.dart';
import 'Providers/LanguageChangeProvider.dart';
import 'generated/l10n.dart';

Future<void> main() async {
  Provider.debugCheckInvalidValueType = null;
  WidgetsFlutterBinding.ensureInitialized();
  await NotificationService().initialize();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) =>  LanguageChangeProvider(),)
      ],
      child: Builder(
        builder: (context) =>
            Consumer<LanguageChangeProvider>(
                builder: (context, value, child) {
                  return MaterialApp(
                    locale: Provider.of<LanguageChangeProvider>(context, listen: true).currentLocale,
                    localizationsDelegates: const [
                      S.delegate,
                      GlobalMaterialLocalizations.delegate,
                      GlobalWidgetsLocalizations.delegate,
                      GlobalCupertinoLocalizations.delegate,
                    ],
                    supportedLocales: S.delegate.supportedLocales,
                    debugShowCheckedModeBanner: false,
                    home: value.doneLoading == true ? const ContainerPage() : SplashScreen(context: context),
                  );
                }
            )
      ),
    );
  }
}

class SplashScreen extends StatefulWidget {
  final BuildContext context;
  const SplashScreen({Key? key, required this.context}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  void getdata() async{
    await Future.delayed(Duration(seconds: 2));
    widget.context.read<LanguageChangeProvider>().doneLoading = true;
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getdata();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        // child: Image(
        //   image: AssetImage('assets/images/logoc.png'),
        //   //height:  MediaQuery.of(widget.context).size.height *0.4,
        // ),
      ),
    );
  }
}