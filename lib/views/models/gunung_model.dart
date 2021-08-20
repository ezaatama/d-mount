class MountainItem {
  final String id;
  final String title;
  final String subTitle;
  final String category;
  final String description;
  final String location;
  final String descLocation;
  final String simaksi;
  final String descSimaksi;
  final String jalur;
  final String descJalur;
  final String imageUrl;

  MountainItem({
    required this.id,
    required this.title,
    required this.subTitle,
    required this.category,
    required this.description,
    required this.location,
    required this.descLocation,
    required this.simaksi,
    required this.descSimaksi,
    required this.jalur,
    required this.descJalur,
    required this.imageUrl,
  });
}

class MountainData {
  List<MountainItem> mountainItems;

  MountainData({required this.mountainItems});
}
