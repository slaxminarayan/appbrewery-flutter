import 'package:geolocator/geolocator.dart';
import 'package:location_permissions/location_permissions.dart';
import 'package:system_setting/system_setting.dart';

class Location {
  double latitude;
  double longitude;

  Future<void> getCurrentLocation() async {
    try {
      ServiceStatus serviceStatus =
          await LocationPermissions().checkServiceStatus();
      print(serviceStatus);
      if (serviceStatus == ServiceStatus.disabled) {
        SystemSetting.goto(SettingTarget.LOCATION);
      }

      Position position = await Geolocator()
          .getCurrentPosition(desiredAccuracy: LocationAccuracy.low);
      //print(position);
      latitude = position.latitude;
      longitude = position.longitude;
    } catch (e) {
      print(e);
    }
  }
}
