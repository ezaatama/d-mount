class BasecampItem{
  final String id;
  final String title;
  final String description;
  final String sk;
  final String descSk;

  BasecampItem({
    required this.id,
    required this.title,
    required this.description,
    required this.sk,
    required this.descSk,
  });
}
class BasecampData {
  List<BasecampItem> basecampItems;

  BasecampData({required this.basecampItems});
}