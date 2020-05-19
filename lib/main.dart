import 'package:courier/pages/Index.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

// void main() => runApp(Index());

void main() => runApp(
      DevicePreview(
        builder: (context) => Index(),
      ),
    );
