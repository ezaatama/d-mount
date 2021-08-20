import '/views/models/gunung_model.dart';

class GunungDataRepo{
  Future<MountainData> getMountainItems() async{
    List<MountainItem> mountainItems = [
    MountainItem(
        id: '1',
        title: 'Gunung Semeru',
        subTitle: '3676 mdpl',
        category: 'Pulau Jawa',
        description:
            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
        location: 'Lokasi Gunung',
        descLocation:
            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
        simaksi: 'Tarif Simaksi',
        descSimaksi:
            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
        jalur: 'Info Jalur Pendakian',
        descJalur:
            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
        imageUrl: 'assets/images/semeru.jpg'),
    MountainItem(
        id: '2',
        title: 'Gunung Ciremai',
        subTitle: '3089 mdpl',
        category: 'Pulau Jawa',
        description:
            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
        location: 'Lokasi Gunung',
        descLocation:
            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
        simaksi: 'Tarif Simaksi',
        descSimaksi:
            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
        jalur: 'Info Jalur Pendakian',
        descJalur:
            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
        imageUrl: 'assets/images/ciremai.jpg'),
    MountainItem(
        id: '3',
        title: 'Gunung Slamet',
        subTitle: '3320 mdpl',
        category: 'Pulau Jawa',
        description:
            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
        location: 'Lokasi Gunung',
        descLocation:
            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
        simaksi: 'Tarif Simaksi',
        descSimaksi:
            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
        jalur: 'Info Jalur Pendakian',
        descJalur:
            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
        imageUrl: 'assets/images/slamet.jpg'),
    MountainItem(
        id: '4',
        title: 'Gunung Kerinci',
        subTitle: '3370 mdpl',
        category: 'Pulau Sumatera',
        description:
            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
        location: 'Lokasi Gunung',
        descLocation:
            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
        simaksi: 'Tarif Simaksi',
        descSimaksi:
            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
        jalur: 'Info Jalur Pendakian',
        descJalur:
            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
        imageUrl: 'assets/images/kerinci.jpg'),
    MountainItem(
        id: '5',
        title: 'Gunung Marapi',
        subTitle: '2876 mdpl',
        category: 'Pulau Sumatera',
        description:
            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
        location: 'Lokasi Gunung',
        descLocation:
            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
        simaksi: 'Tarif Simaksi',
        descSimaksi:
            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
        jalur: 'Info Jalur Pendakian',
        descJalur:
            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
        imageUrl: 'assets/images/marapi.jpg'),
  ];
    return MountainData(mountainItems: mountainItems);
  }
}