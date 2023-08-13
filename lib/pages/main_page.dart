import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  String selectedType = 'bersih';
  String selectedFrecuency = 'monthly';

  void onChangedPaketType(String type) {
    selectedType = type;
    setState(() {});
  }

  void changeFrequency(String frequency) {
    selectedFrecuency = frequency;

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          'Paket Langganan',
          style: TextStyle(fontWeight: FontWeight.w700, color: Colors.white),
        ),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.all(20.0),
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(40),
            topRight: Radius.circular(40),
          ),
        ),
        child: ListView(
          children: [
            const SizedBox(
              height: 5,
            ),
            const Text(
              'Pilih Paket',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () {
                    onChangedPaketType('bersih');
                  },
                  child: Column(
                    children: [
                      Container(
                        height: 140,
                        width: MediaQuery.of(context).size.width * 0.40,
                        decoration: BoxDecoration(
                          color: Colors.blue.shade100,
                          borderRadius: const BorderRadius.all(
                            Radius.circular(
                              20,
                            ),
                          ),
                          image: const DecorationImage(
                            image: AssetImage(
                              'assets/images/img1.png',
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        'Paket Bersih',
                        style: TextStyle(fontWeight: FontWeight.w600),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.blue.shade100),
                        child: selectedType == 'bersih'
                            ? Icon(
                                Icons.check_circle,
                                color: Colors.pink.shade400,
                              )
                            : Container(),
                      )
                    ],
                  ),
                ),
                InkWell(
                  onTap: () {
                    onChangedPaketType('mengkilap');
                  },
                  child: Column(
                    children: [
                      Container(
                        height: 140,
                        width: MediaQuery.of(context).size.width * 0.43,
                        decoration: BoxDecoration(
                            color: Colors.blue.shade100,
                            image: const DecorationImage(
                                image: AssetImage('assets/images/img2.png')),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(20))),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        'Paket Extra Bersih',
                        style: TextStyle(fontWeight: FontWeight.w600),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Container(
                          height: 30,
                          width: 30,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.blue.shade100),
                          child: selectedType == 'mengkilap'
                              ? const Icon(
                                  Icons.check_circle,
                                  color: Colors.pink,
                                  size: 30,
                                )
                              : Container())
                    ],
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              'Pilih Langganan',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w700,
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () {
                    changeFrequency('weekly');
                  },
                  child: Container(
                    height: 50,
                    width: 110,
                    decoration: selectedFrecuency == 'weekly'
                        ? BoxDecoration(
                            color: Colors.pink.shade400,
                            borderRadius: const BorderRadius.all(
                              Radius.circular(10.0),
                            ),
                          )
                        : BoxDecoration(
                            border: Border.all(
                                color: Colors.black.withOpacity(0.3)),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(10.0)),
                          ),
                    child: Center(
                      child: Text(
                        'Weekly',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: selectedFrecuency == 'weekly'
                                ? Colors.white
                                : Colors.black),
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    changeFrequency('biweekly');
                  },
                  child: Container(
                    height: 50,
                    width: 110,
                    decoration: selectedFrecuency == 'biweekly'
                        ? BoxDecoration(
                            color: Colors.pink.shade400,
                            borderRadius: const BorderRadius.all(
                              Radius.circular(10.0),
                            ),
                          )
                        : BoxDecoration(
                            border: Border.all(
                                color: Colors.black.withOpacity(0.3)),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(10.0)),
                          ),
                    child: Center(
                      child: Text(
                        '2-Weeks',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: selectedFrecuency == 'biweekly'
                                ? Colors.white
                                : Colors.black),
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    changeFrequency('monthly');
                  },
                  child: Container(
                    height: 50,
                    width: 110,
                    decoration: selectedFrecuency == 'monthly'
                        ? BoxDecoration(
                            color: Colors.pink.shade400,
                            borderRadius: const BorderRadius.all(
                              Radius.circular(10.0),
                            ),
                          )
                        : BoxDecoration(
                            border: Border.all(
                                color: Colors.black.withOpacity(0.3)),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(10.0)),
                          ),
                    child: Center(
                      child: Text(
                        'Monthly',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: selectedFrecuency == 'monthly'
                                ? Colors.white
                                : Colors.black),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              'Pilih Tambahan',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                extraWidget('es', 'Dapur', true),
                extraWidget('belanja', 'Memasak', false),
                extraWidget('tirai', 'Tirai Kecil', true),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                extraWidget('teras', 'Teras', true),
                extraWidget('belanja', 'Memasak', false),
                extraWidget('tirai', 'Tirai Kecil', false),
              ],
            )
          ],
        ),
      ),
    );
  }

  Column extraWidget(String img, String name, bool isSelected) {
    return Column(
      children: [
        Stack(
          children: [
            Container(
              height: 70,
              width: 70,
              decoration: const BoxDecoration(
                  shape: BoxShape.circle, color: Colors.blue),
              child: Container(
                margin: const EdgeInsets.all(17),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/$img.png'),
                  ),
                ),
              ),
            ),
            Positioned(
                child: isSelected == true
                    ? Container(
                        height: 30,
                        width: 30,
                        decoration: const BoxDecoration(
                            shape: BoxShape.circle, color: Colors.white),
                        child: Center(
                          child: Icon(
                            Icons.check_circle,
                            color: Colors.pinkAccent.shade400,
                          ),
                        ),
                      )
                    : Container())
          ],
        ),
        const SizedBox(
          height: 5,
        ),
        Text(
          name,
          style: const TextStyle(fontWeight: FontWeight.w500),
        )
      ],
    );
  }
}
