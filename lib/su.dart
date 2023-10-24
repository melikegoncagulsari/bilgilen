import 'package:flutter/material.dart';

class SuInfoPage extends StatefulWidget {
  const SuInfoPage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _SuInfoPageState createState() => _SuInfoPageState();
}

class _SuInfoPageState extends State<SuInfoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Su Tasrrrufu İpuçları'),
        backgroundColor: Colors.green,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pop('/homepage');
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: ListView(
          children: const <Widget>[
            Text(
                'Bireysel su tasarrufu çabalarınıza katkı sağlayacak bu öneriler sayesinde hem su kaynaklarını koruyup hem de su faturalarınızı azaltır, aynı zamanda çevresel sürdürülebilirliğe katkı sağlayacaktır.'),
            ListTile(
              leading: Icon(Icons.water_drop),
              title: Text('Muslukları Kapatın!'),
              subtitle: Text(
                  'Diş fırçalarken,ellerinizi yıkarken ya da herhangi bir sebeple su kullanırken gereksiz yere akan muslukları açık bırakmayın. Sadece ihtiyaç duyduğunuzda suyu kullanın.'),
            ),
            ListTile(
              leading: Icon(Icons.water_drop_outlined),
              title: Text('Su Akışını Kontrol Edin'),
              subtitle: Text(
                  'Muslukları için otomatik Sensörler ya da su akışını kontrol eden su debitörlerini kullanarak tasarruf yapın. Daha düşük akışlı musluk ve duş başlıkları kullanarak su kullanımını azaltabilirsiniz. Eğer maddi olarak bu mümkün değilse musluğu tam açmak yerine yarı açık kullanarak su tüketimini azaltın.'),
            ),
            ListTile(
              leading: Icon(Icons.water_drop),
              title: Text('Su Verimli Cihazlar Kullanın'),
              subtitle: Text(
                  'Su tasarruflu cihazlar, bulaşık yıkama makineleri, çamaşır makineleri ve tuvaletler gibi, daha az su kullanarak aynı işi yapan cihazları tercih edebilirsiniz. Ayrıca bu cihazları tam dolu çalıştırarak her yıkama işlemi başına daha az su kullanabilirsiniz.'),
            ),
            ListTile(
              leading: Icon(Icons.water_drop_outlined),
              title: Text(
                  'Çevre Duyarlı Temizlik Ürünleri Kullanarak Kimyasal Kirliliği Önleyin'),
              subtitle: Text(
                  'Evde kimyasal temizlik ürünleri kullanırken çevre dostu ve kimyasal içermeyen ürünleri tercih edin.'),
            ),
            ListTile(
              leading: Icon(Icons.water_drop),
              title: Text('Damlalama/Yağmurlama Tesisatı Kullanın '),
              subtitle: Text(
                  'Bahçenizi/Tarlanızı sularken yağmurlama tesisatı veya damlama sulama sistemleri gibi su tasarrufu sağlayan yöntemleri kullanarak bahçenizi veya tarlanızı verimli bir şekilde sulayın.'),
            ),
            ListTile(
              leading: Icon(Icons.water_drop_outlined),
              title: Text('Yağmur Suyu Toplayın'),
              subtitle: Text(
                  'Yağmur suyu toplama sistemleri kullanarak bahçenizdeki veya tarlanızdaki bitkilerinizi sulayabilirsiniz.Yağmur suyunu ayrıca temizlik yapmak için de kullanabilirsiniz.'),
            ),
            ListTile(
              leading: Icon(Icons.water_drop),
              title: Text('Doğal Gölgelendirme Sağlayın'),
              subtitle: Text(
                  'Ağaçlar veya bitki örtüsü dikerek doğal gölgelendirme sağlayın. Bu, toprak nemini korunmasına ve sulama ihtiyacını azaltmaya yardımcı olur.'),
            ),
            ListTile(
              leading: Icon(Icons.water_drop_outlined),
              title: Text('Su Kaynaklarını Koruma Projelerine Destek Verin'),
              subtitle: Text(
                  'Yerel su kaynaklarını koruma projelerine katılarak ve destek vererek suyun temiz ve sağlıklı kalmasına yardımcı olabilirsiniz.'),
            ),
          ],
        ),
      ),
    );
  }
}
