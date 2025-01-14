/*
Copyright 2021 The dahliaOS Authors

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
*/

import 'package:dahlia_backend/dahlia_backend.dart';
import 'package:flutter/material.dart';

class LauncherItem extends StatelessWidget {
  final String? iconPath;
  final Widget? application;
  const LauncherItem(this.iconPath, this.application);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      hoverColor: Colors.white..withOpacity(0.3),
      onTap: () {},
      child: BoxSurface(
        width: 128,
        height: 128,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset("assets/icons/$iconPath.png"),
            Text(iconPath.toString()),
          ],
        ),
      ),
    );
  }
}
