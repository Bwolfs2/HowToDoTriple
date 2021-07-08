import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

@immutable
abstract class Module extends StatefulWidget {
  final List<SingleChildWidget> providers = [];
  final Widget? page = null;

  @override
  _ModuleState createState() => _ModuleState(
        MultiProvider(
          providers: providers,
          child: page,
        ),
      );
}

class _ModuleState extends State<Module> {
  final MultiProvider multiProvider;

  _ModuleState(this.multiProvider);

  @override
  Widget build(BuildContext context) {
    return multiProvider;
  }
}
