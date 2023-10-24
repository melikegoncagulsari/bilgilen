import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        backgroundColor: Colors.green,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(10),
        child: Column(children: [
          Container(
            margin: const EdgeInsets.all(5),
            child: const Text(
              'İklim Krizi Nedir?',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
            ),
          ),
          const Text(
            '\t\tDünyamız atmosferinde sera gazları denilen karbondioksit, metan, su buharı, ozon, azot oksit vb. gazları barındırır. Bu gazlar doğal oranında güneşten gelen zaralı ışınları geri yansıtarak dünyanın ısınmasını engeller. Ancak son yüzyıllarda sanayileşmeyle birlikte bu gazlarının miktarındaki artışın fazla olmasına ve güneşten gelen ışınların absorbe edilerek dünyanın ısınmasına yol açmaktadır. Dünyamızın ısısının artmasına Küresel Isınma ve küresel ısınma sebebiyle yaşanan krize ise İklim Krizi denmektedir. İklim krizi, dünya genelinde ekolojik sorunların yanında ekonomik ve sosyal sorunlara neden olur ve küresel çapta ciddi bir tehdit oluşturur. Bu nedenle iklim değişikliği ile mücadele etmek önemlidir. ',
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Image.asset(
              'images/climate-change.jpg',
              width: 200,
              height: 150,
              fit: BoxFit.cover,
            ),
          ),
          const Text(
              '\t\tİklim kriziyle mücadele, sera gazı emisyonlarını azaltmak, sürdürülebilir enerji kaynaklarına yönelmek, ormancılığı teşvik etmek ve toplumların iklim değişikliğine uyum sağlamasını desteklemek gibi çeşitli önlemleri gerektirir. Bu, hem gezegeni hem de insanlığı korumak için önemlidir.İklim krizinin etkilerinin azalması için bilinçli bir şekilde hareket etmeli ve sürdürülebilir bir yaşam tarzına sahip olmalıyız.Sürdürülebilir bir yaşam tarzına sahip olup olmadığımız karbon ayak izi testi yaparak anlaşılabilir. Aşağıdaki yazıya tıklayarak yaklaşık karbon ayak izi değerinizi ölçmeye başlayabilirsiniz.'),
          Image.asset(
            'images/carbonfootprint.jpg',
            width: 150,
            height: 150,
          ),
          ElevatedButton(
            child: const Text('KARBON AYAK İZİNİ HESAPLA'),
            onPressed: () {
              Navigator.pushNamed(context, '/carbonfootprint');
            },
          ),
          const SizedBox(
            height: 7,
          ),
          const Text(
              '\t\tAşağıdaki resimlere tıklayarak sürdürülebilir yaşama dair ipuçlarına ulaşabilirsiniz.'),
          const SizedBox(
            height: 7,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                onTap: () {
                  Navigator.pushNamed(context, '/su');
                },
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Container(
                    height: 100.0,
                    width: 120.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      shape: BoxShape.rectangle,
                    ),
                    child: Stack(
                      children: <Widget>[
                        Image.asset(
                          'images/su.jpg', // Resmin yolunu ve dosya adını buraya ekleyin
                          height: 100.0,
                          width: 120.0,
                          fit: BoxFit.cover,
                        ),
                        const Center(
                          child: Padding(
                            padding: EdgeInsets.all(15),
                            child: Text(
                              'Su İle İlgili İpuçları',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              InkWell(
                onTap: () {
                  Navigator.pushNamed(context, '/enerji');
                },
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Container(
                    height: 100.0,
                    width: 120.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      shape: BoxShape.rectangle,
                    ),
                    child: Stack(
                      children: <Widget>[
                        Image.asset(
                          'images/elektrik.jpg', // Resmin yolunu ve dosya adını buraya ekleyin
                          height: 100.0,
                          width: 120.0,
                          fit: BoxFit.cover,
                        ),
                        const Center(
                          child: Padding(
                            padding: EdgeInsets.all(15),
                            child: Text(
                              'Enerji İle İlgili İpuçları',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              InkWell(
                onTap: () {
                  Navigator.pushNamed(context, '/gidaipucu');
                },
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Container(
                    height: 100.0,
                    width: 120.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      shape: BoxShape.rectangle,
                    ),
                    child: Stack(
                      children: <Widget>[
                        Image.asset(
                          'images/gida.jpg', // Resmin yolunu ve dosya adını buraya ekleyin
                          height: 100.0,
                          width: 120.0,
                          fit: BoxFit.cover,
                        ),
                        const Center(
                          child: Padding(
                            padding: EdgeInsets.all(15),
                            child: Text(
                              'Gıda İsrafının Engellenmesi ve Sıfır Atık',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ]),
      ),
    );
  }
}
