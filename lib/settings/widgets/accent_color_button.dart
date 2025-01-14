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
import 'package:pangolin/settings/models/settings_accent_data_model.dart';
import 'package:pangolin/utils/common_data.dart';
import 'package:provider/provider.dart';

class AccentColorButton extends StatefulWidget {
  final AccentColorDataModel model;
  const AccentColorButton({Key? key, required this.model}) : super(key: key);

  @override
  State<AccentColorButton> createState() => _AccentColorButtonState();
}

class _AccentColorButtonState extends State<AccentColorButton> {
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<PreferenceProvider>(context);
    return Tooltip(
      message: widget.model.label,
      child: InkWell(
        borderRadius:
            CommonData.of(context).borderRadius(BorderRadiusType.SMALL),
        mouseCursor: SystemMouseCursors.click,
        onTap: () {
          provider.accentColor = widget.model.color.value;
          setState(() {});
        },
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Container(
                height:
                    provider.accentColor == widget.model.color.value ? 64 : 48,
                width:
                    provider.accentColor == widget.model.color.value ? 64 : 48,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Color(widget.model.color.value),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
