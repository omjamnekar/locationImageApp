import 'package:uuid/uuid.dart';
import 'dart:io';

final uuid = Uuid();

class Place {
  Place({
    required this.title,
    required this.image,
    required this.location,
    String? id,
  }) : id = id ?? uuid.v4();

  final String id;
  final String title;
  final File image;
  final PlaceLocation location;
}

class PlaceLocation {
  const PlaceLocation({
    required this.address,
    required this.latitude,
    required this.longitude,
  });
  final double latitude;
  final double longitude;
  final String address;
}
