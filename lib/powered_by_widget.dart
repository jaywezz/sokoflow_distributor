import 'package:flutter/material.dart';
import 'package:nested_navigation_gorouter_example/utils/styles.dart';
// import 'package:package_info_plus/package_info_plus.dart';


class PoweredByWidget extends StatefulWidget {
  const PoweredByWidget({Key? key}) : super(key: key);

  @override
  State<PoweredByWidget> createState() => _PoweredByWidgetState();
}

class _PoweredByWidgetState extends State<PoweredByWidget> {
  String appName = "";
  String packageName = "";
  String version = "";
  String buildNumber = "";
  getAppVersion() async {
    // PackageInfo packageInfo = await PackageInfo.fromPlatform();
    setState(() {
      // appName = packageInfo.appName;
      // packageName = packageInfo.packageName;
      version = "1.0.0";
      // buildNumber = packageInfo.buildNumber;
    });
    print("app version: $version");
  }

  @override
  void initState() {
    // TODO: implement initState
    getAppVersion();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Text(
            "Powered by: ",
            style: Styles.heading4(context).copyWith(color: Colors.grey[500]),
          ),
          Image.asset(
            "assets/logos/main-logo1.png",
            width: MediaQuery.of(context).size.width * .16,
          ),
          Text(
            "V$version",
            style: Styles.heading4(context).copyWith(color: Colors.grey[500]),
          ),
        ],
      ),
    );
  }
}
