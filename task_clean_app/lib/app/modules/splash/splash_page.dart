import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:task_clean_app/app/modules/shared/database/database_shared.dart';

class SplashPage extends StatefulWidget {
  final String title;
  const SplashPage({Key? key, this.title = "Splash"}) : super(key: key);

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  List<Future> precaches = [
    Future.delayed(Duration(seconds: 3)),
    Modular.get<DatabaseShared>()()
  ];

  @override
  void initState() {
    super.initState();

    Future.wait(precaches)
        .then((value) => Modular.to.pushReplacementNamed("/myTasks"));
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Color(0xffFFFFFF),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            FlutterLogo(
              size: 100,
              textColor: Colors.amber,
            ),
            SizedBox(
              height: 20,
            ),
            CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation(
                Colors.amber,
              ),
            )
          ],
        ),
      ),
    );
  }
}
