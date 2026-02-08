// value notifer: this holds the data
// ValueListenableBuilder: listen to the data (here we don't need to set the state)

import 'package:flutter/material.dart';

ValueNotifier<int> selectedPageNotifer = ValueNotifier(0);
ValueNotifier<bool> isDarkModeNotifier = ValueNotifier(true);
