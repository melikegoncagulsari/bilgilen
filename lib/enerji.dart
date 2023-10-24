import 'package:flutter/material.dart';

class EnergyInfoPage extends StatefulWidget {
  const EnergyInfoPage({super.key});
  @override
  State<EnergyInfoPage> createState() => _EnergyInfoPageState();
}

class _EnergyInfoPageState extends State<EnergyInfoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Enerji Info'),
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
                  'İklim kriziyle mücadelede elektrik tasarrufu hem enerji faturalarınızı düşürmek hem de iklim değişikliğiyle mücadeledeki rolünüzü oynamak açısından önemlidir. Elektrik üretimi genellikle fosil yakıtlardan (kömür, doğalgaz, petrol) elde edilir ve bu süreç sera gazı emisyonlarını artırır. Bu nedenle elektrik tüketimini azaltmak, sera gazı emisyonlarını düşürmeye yardımcı olabilir.'),
              ListTile(
                leading: Icon(Icons.energy_savings_leaf),
                title: Text(
                    'Enerji Tasarruflu Ampuller ve Doğal Aydınlatma Kullanın'),
                subtitle: Text(
                    'Geleneksel halojen veya floresan ampuller yerine enerji tasarruflu LED ampuller kullanın. LED ampuller daha az enerji tüketir ve daha uzun ömürlüdür.Ayrıca gündüzleri ev veya işyerinizde doğal aydınlatmayı kullanmaya çalışın. Daha fazla pencere veya pencere kaplamaları kullanarak iç mekanlara daha fazla doğal ışık alabilirsiniz.'),
              ),
              ListTile(
                leading: Icon(Icons.power_off),
                title: Text('Bilinçli Kullanım'),
                subtitle: Text(
                    'Elektrikli cihazları gereksiz yere çalıştırmamaya dikkat edin. Prizde takılı bırakılan cihazlar hala enerji tüketir, bu nedenle kullanılmadıkları zaman prizden çıkarın.Ayrıca gereksiz yere çalışan ampulleri kapatın. Bulaşık makinelerini ve çamaşır makinelerini tam kapasiteyle doldurarak daha az su ve enerji tüketin. '),
              ),
              ListTile(
                leading: Icon(Icons.local_laundry_service_outlined),
                title: Text('Enerji Dostu Cihazlar'),
                subtitle: Text(
                    'Elektrikli cihazları satın alırken enerji etiketlerini ve çevresel sertifikaları inceleyin.Enerji verimli beyaz eşya ve elektronik cihazlar satın alın. Bu cihazlar, daha az enerji tüketir ve uzun vadede elektrik faturalarınızı azaltır.'),
              ),
              ListTile(
                leading: Icon(Icons.solar_power),
                title: Text('Güneş Enerjisi'),
                subtitle: Text(
                    'Güneş enerjisi panelleri kullanarak kendi elektriğinizi üretebilirsiniz. Bu, hem enerji faturalarını düşürmeye hem de çevreye katkı sağlamaya yardımcı olur.'),
              ),
              ListTile(
                leading: Icon(Icons.home_outlined),
                title: Text('Pencereleri ve Kapıları Yalıtın'),
                subtitle: Text(
                    'Evinizi daha iyi yalıtmak için pencereleri ve kapıları yalıtım malzemeleriyle kaplatın. Bu, ısınma ve soğutma maliyetlerini azaltır.'),
              ),
              ListTile(
                leading: Icon(Icons.pedal_bike),
                title: Text('Seyahat Ederken Araç Tercihi'),
                subtitle: Text(
                    'Kişisel araç kullanımını sınırlayarak daha fazla toplu taşıma, bisiklet kullanarak veya yürüyerek karbon ayak izinizi azaltabilirsiniz.'),
              ),
              ListTile(
                leading: Icon(Icons.diversity_3),
                title: Text('Eğitim ve Farkındalık'),
                subtitle: Text(
                    'Aile üyeleri, arkadaşlar ve çevrenizdeki diğer insanlara elektrik tasarrufu hakkında bilinç kazandırın ve enerji tüketimini azaltmaları için teşvik edin.'),
              ),
            ],
          )),
    );
  }
}
