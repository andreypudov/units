import '../../plane_angle_unit.dart';

abstract class PlaneAngleValue {
  final double value;

  PlaneAngleValue(this.value);

  factory PlaneAngleValue.from(PlaneAngleUnit unit, double value) {
    return switch (unit) {
      PlaneAngleUnit.arcsecond => Arcsecond(value),
      PlaneAngleUnit.degree => Degree(value),
      PlaneAngleUnit.gradian => Gradian(value),
      PlaneAngleUnit.milliradian => Milliradian(value),
      PlaneAngleUnit.minuteOfArc => MinuteOfArc(value),
      PlaneAngleUnit.radian => Radian(value),
    };
  }

  PlaneAngleValue to(PlaneAngleUnit unit);
}