import 'package:app_delivery/app/core/config/env/env.dart';
import 'package:app_delivery/app/delivery_app.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  await Env.instance.load();
  runApp(const DeliveryApp());
}
  