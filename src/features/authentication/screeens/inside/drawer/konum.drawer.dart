import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

class Konum extends StatefulWidget {
  const Konum({Key? key}) : super(key: key);

  @override
  _KonumState createState() => _KonumState();
}

class _KonumState extends State<Konum> {
  String konumBilgisi = "hata?!";
  @override
  void initState() {
    super.initState();
    _getKonumBilgisi();
  }

  void _getKonumBilgisi() async {
    try {
      // ignore: unused_local_variable
      Position position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high,
      );
      setState(() {
        konumBilgisi =
            "Enlem: ${41.004690479345356}, Boylam: ${29.021289925782998}";
      });
    } catch (e) {
      print("Konum bilgisi alınamadı!: $e");
      setState(() {
        konumBilgisi = "Ulaşılamadı";
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Konum"),
        backgroundColor: Colors.red.shade900,
      ),
      body: Center(
        child: Text(konumBilgisi),
      ),
    );
  }
}
