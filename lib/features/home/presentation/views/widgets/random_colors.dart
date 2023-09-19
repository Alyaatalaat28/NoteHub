import 'dart:math';

import 'package:flutter/material.dart';

Color generateColor(){
  Random random=Random();
  return Color.fromARGB(
    255,
    random.nextInt(256),
    random.nextInt(256),
    random.nextInt(256),
     );
}