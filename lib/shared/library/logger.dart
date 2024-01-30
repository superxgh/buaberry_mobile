library logger;

import 'package:logger/logger.dart';

var logger = Logger(
  printer: SimplePrinter(
      colors: true, // Colorful log messages
      printTime: true),
);

// var logger = Logger(
//   printer: PrettyPrinter(),
// );

// var logger = Logger(
//   printer: SimplePrinter(
//       colors: true, // Colorful log messages
//       printTime: true),
// );

// var loggerWithBlock = Logger(
//   printer: PrettyPrinter(
//       methodCount: 0, // number of method calls to be displayed
//       errorMethodCount: 8, // number of method calls if stacktrace is provided
//       lineLength: 120, // width of the output
//       colors: true, // Colorful log messages
//       printEmojis: true, // Print an emoji for each log message
//       printTime: false, // Should each log print contain a timestamp
//       noBoxingByDefault: false),
// );

// var loggerWithBlockAndMethod = Logger(
//   printer: PrettyPrinter(
//       methodCount: 1, // number of method calls to be displayed
//       errorMethodCount: 8, // number of method calls if stacktrace is provided
//       lineLength: 120, // width of the output
//       colors: true, // Colorful log messages
//       printEmojis: true, // Print an emoji for each log message
//       printTime: false, // Should each log print contain a timestamp
//       noBoxingByDefault: false),
// );