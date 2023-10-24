import 'package:flutter/material.dart';

class FoodInfoPage extends StatefulWidget {
  const FoodInfoPage({super.key});
  @override
  State<FoodInfoPage> createState() => _FoodInfoPageState();
}

class _FoodInfoPageState extends State<FoodInfoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Food Info'),
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
                  'Gıda israfını azaltmak ve sıfır atık hedeflerine ulaşmak için bu tavsiyeleri uygulamak hem çevre hem de ekonomi açısından önemlidir. İnsanlar ve toplumlar bu konuda daha fazla farkındalık kazandıkça, daha sürdürülebilir bir yaşam tarzını benimsemek daha kolay hale gelir.'),
              ListTile(
                leading: Icon(Icons.shopping_cart),
                title: Text('Bilinçli Alışveriş Yapın'),
                subtitle: Text(
                    'Alışveriş yapmadan önce bir alışveriş listesi oluşturun ve sadık kalın. Planlı alışveriş, gereksiz yiyecek alımlarını azaltır.Bozulma süresi daha kısa olan ürünleri tüketmeye öncelik verin.Ürünlerin son kullanma tarihlerini ve taze tüketim tarihlerini dikkate alın. Eski ürünleri önce tüketin.Soğuk depolama koşullarına dikkat edin.'),
              ),
              ListTile(
                leading: Icon(Icons.kitchen_outlined),
                title: Text('İyi Depolama Uygulamaları'),
                subtitle: Text(
                    'Yiyecekleri uygun kaplarda saklayın.Buzdolabınızı ve dondurucunuzu düzenli olarak temizleyin ve düzenleyin.Mantar ve yumuşak meyveleri plastik poşetler yerine hava alabilen kaplarda saklayın.'),
              ),
              ListTile(
                leading: Icon(Icons.recycling),
                title: Text('Daha Az Plastik Kullanımı'),
                subtitle: Text(
                    'Tek kullanımlık plastik ürünlerden kaçının ve plastik poşet kullanımını sınırlayın. Bez torbalar veya tekstil torbalar kullanmayı tercih edin.Kendi su şişenizi veya kahve fincanınızı taşıyarak tek kullanımlık plastik şişeler veya bardaklar yerine kullanın.Deterjan ve temizlik malzemelerini yeniden doldurulabilir şişlerden alın.Ambalaj malzemelerini geri dönüşüme gönderin.Evde, işte veya okulda geri dönüşüm kutuları kullanarak ambalaj malzemelerini ayrı toplayın.'),
              ),
              ListTile(
                leading: Icon(Icons.compost),
                title: Text('Organik Atıkları Değerlendirin'),
                subtitle: Text(
                    'Yiyecek artıklarını azaltmak için yemek planları yapın ve miktarları ayarlayın.Artık yemekleri dondurarak veya başka yemeklerde kullanarak israfı azaltın.Yiyecek atıklarını kompost yapmanın yanı sıra, organik atıklarınızı toplamak için belediyenizin organik atık hizmetlerini kullanın.'),
              ),
              ListTile(
                leading: Icon(Icons.school_outlined),
                title: Text('Eğitim ve Farkındalık'),
                subtitle: Text(
                    'Dışarıda yemek siparişi verirken porsiyonları ayarlayın ve fazla yiyecekleri eve götürün.Restoranlar ve kafelerde fazla yiyeceğinizi paylaşın.Restoranlar ve marketler arasında sıfır atık ilkelerine sadık olanları tercih edin.Ailenizi ve arkadaşlarınızı bu konuda eğitin ve farkındalık yaratın.Okullarda ve toplumda gıda israfı hakkında eğitim programlarına katılın.'),
              ),
            ],
          )),
    );
  }
}
