import 'dart:math' as math;
import 'package:get/get.dart';


String trans(String val) {
  if (val.isNotEmpty) {
    return val.tr;
  }
  return val;
}

List arrayFilter(List val) {
  if (val.isNotEmpty) {
    List newArray = [];
    for (int i = 0; i < val.length; i++) {
      if (val[i] != null) {
        newArray.add(val[i]);
      }
    }
    return newArray;
  } else {
    return [];
  }

  //ex : helper.array_filter(data);
}

extension StringCasingExtension on String {
  String toCapitalized() => length > 0 ?'${this[0].toUpperCase()}${substring(1).toLowerCase()}':'';
  String toTitleCase() => replaceAll(RegExp(' +'), ' ').split(' ').map((str) => str.toCapitalized()).join(' ');
}



const double degrees2Radians = math.pi / 180.0;

/// Constant factor to convert and angle from radians to degrees.
const double radians2Degrees = 180.0 / math.pi;

/// Convert [radians] to degrees.
double degrees(double radians) => radians * radians2Degrees;

/// Convert [degrees] to radians.
double radians(double degrees) => degrees * degrees2Radians;

/// Interpolate between [min] and [max] with the amount of [a] using a linear
/// interpolation. The computation is equivalent to the GLSL function mix.
double mix(double min, double max, double a) => min + a * (max - min);

/// Do a smooth step (hermite interpolation) interpolation with [edge0] and
/// [edge1] by [amount]. The computation is equivalent to the GLSL function
/// smoothstep.
double smoothStep(double edge0, double edge1, double amount) {
  final t = ((amount - edge0) / (edge1 - edge0)).clamp(0.0, 1.0).toDouble();

  return t * t * (3.0 - 2.0 * t);
}

//learning dashboard bottom nav bar size
const double alphaOff = 0;
const double alphaOn = 1;
const int animDuration = 300;