import 'package:flutter/material.dart';

double electric = 0, gas = 0, su = 0, airplane = 0, result = 0;
double km = 0;
bool evetSecildi = false;

class CarbonInfoPage extends StatefulWidget {
  const CarbonInfoPage({super.key});

  @override
  State<CarbonInfoPage> createState() => _CarbonInfoPageState();
}

class _CarbonInfoPageState extends State<CarbonInfoPage> {
  final TextEditingController electricController = TextEditingController();
  final TextEditingController gasController = TextEditingController();
  final TextEditingController suController = TextEditingController();
  final TextEditingController kmController = TextEditingController();
  final TextEditingController airplaneController = TextEditingController();
  final TextEditingController cycleController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Carbon Info'),
        backgroundColor: Colors.green,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pushNamed(context, '/home');
          },
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(children: [
          const Padding(padding: EdgeInsets.all(10)),
          const Text(''),
          TextField(
            controller: electricController,
            decoration: const InputDecoration(hintText: 'Elektrik faturanız'),
          ),
          TextField(
            controller: gasController,
            decoration: const InputDecoration(hintText: 'Gaz faturanız'),
          ),
          TextField(
            controller: suController,
            decoration: const InputDecoration(hintText: 'Su faturanız'),
          ),
          TextField(
            controller: kmController,
            decoration: const InputDecoration(
                hintText: 'Arabanızla aylık kaç km yol yapıyorsunuz'),
          ),
          TextField(
            controller: airplaneController,
            decoration: const InputDecoration(
                hintText: 'Uçakla uçtuğunuzda km yol yapıyorsunuz'),
          ),
          const SizedBox(height: 10),
          const Text(
            'Geri dönüşüm yapıyor musunuz',
          ),
          Row(
            children: [
              Radio(
                value: true,
                groupValue: evetSecildi,
                onChanged: (bool? value) {
                  setState(() {
                    evetSecildi = true;
                  });
                },
              ),
              const Text('Evet'),
            ],
          ),
          Row(
            children: [
              Radio(
                value: false,
                groupValue: evetSecildi,
                onChanged: (bool? value) {
                  setState(() {
                    evetSecildi = false;
                  });
                },
              ),
              const Text('Hayır'),
            ],
          ),
          ElevatedButton(
              onPressed: () {
                setState(() {
                  electric = double.parse(electricController.text) * 105;
                  gas = double.parse(gasController.text) * 105;
                  su = double.parse(suController.text) * 105;
                  km = double.parse(kmController.text) * 0.75;
                  if (double.parse(airplaneController.text) <= 4400) {
                    airplane = double.parse(airplaneController.text) * 1100;
                  } else {
                    airplane = double.parse(airplaneController.text) * 4400;
                  }

                  if (evetSecildi) {
                    result = electric + gas + su + km + airplane + 100;
                  } else {
                    result = electric + gas + su + km + airplane;
                  }
                });
              },
              child: const Text('SONUÇ')),
          const SizedBox(height: 10),
          Text("Sonuç: $result"),
          const SizedBox(height: 10),
          const Text(
              '"İdeal" bir karbon ayak izinin (veya "düşük" ayak izinin) yılda 6.000 ila 15.999 puan arasında olduğunu unutmayın. 6000 altı çok düşük kabul ediliyor. 16.000-22.000 arası ise ortalama kabul ediliyor. 22.000 üzerindeyse sürdürülebilir yaşam önerilerinden bazılarını dikkate almak isteyebilirsiniz.*Tahmini sonuçları içerir*'),
        ]),
      ),
    );
  }
}
