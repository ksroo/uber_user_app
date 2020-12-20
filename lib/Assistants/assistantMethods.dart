import 'package:geolocator/geolocator.dart';
import 'package:uber_user/Assistants/requestAssisstant.dart';

import '../configMaps.dart';

class AssistantMethods {
  static Future<String> searchCoordinateAddress(Position position) async {
    String placeAddress = "";
    String url =
        "https://maps.googleapis.com/maps/api/geocode/json?latlng=${position.latitude},${position.longitude}&key=$mapKey";

    var response = await RequestAssistant.getRequest(url);


    if(response != "failed")
    {
      placeAddress = response["results"][0]["formatted_address"];
    }

    return placeAddress;
  }
}
