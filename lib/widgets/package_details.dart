import 'package:flutter/material.dart';
import 'package:package_info_plus/package_info_plus.dart';

class PackageDetails extends StatefulWidget {
  @override
  State<PackageDetails> createState() => _PackageDetailsState();
}

class _PackageDetailsState extends State<PackageDetails> {
  PackageInfo _packageInfo = PackageInfo(
    appName: 'Unknown',
    packageName: 'Unknown',
    version: 'Unknown',
    buildNumber: 'Unknown',
    buildSignature: 'Unknown',
  );

  @override
  void initState() {
    _initPackageInfo();
    super.initState();
  }

  void _initPackageInfo() async {
    // Fetch package info on startup.
    final PackageInfo info = await PackageInfo.fromPlatform();
    setState(() {
      _packageInfo = info;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          ListTile(
            title: Text('App Name'),
            subtitle: Text(_packageInfo.appName),
          ),
          ListTile(
            title: Text('Version Code'),
            subtitle: Text('v${_packageInfo.version}'),
          ),
          ListTile(
            title: Text('Package Name'),
            subtitle: Text(_packageInfo.packageName),
          ),
        ],
      ),
    );
  }
}
