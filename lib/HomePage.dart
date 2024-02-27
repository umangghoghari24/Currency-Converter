import 'package:flutter/material.dart';

class Converter extends StatefulWidget {
  const Converter({Key? key}) : super(key: key);

  @override
  State<Converter> createState() => _ConverterState();
}

class _ConverterState extends State<Converter> {

  TextEditingController rupeesconverter = TextEditingController();
  double dollar = 0.0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Text(''),
        title: Text('     Currency Converter'),
      ),

      body: Padding(
        padding: const EdgeInsets.all(30),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 170,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.indigo.withOpacity(0.3),
                        spreadRadius: 2,
                        blurRadius: 4,
                        offset: Offset(0, 3),
                      )
                    ]),
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(5),
                            child: Image.network(
                              'https://media.istockphoto.com/id/519611160/vector/flag-of-india.jpg?s=612x612&w=0&k=20&c=0HueaQHkdGC4Fw87s3DbeTE9Orv3mqHRLce88LV47E4=',
                              height: 30,
                              width: 50,
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'India',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  'Rupees',
                                  style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                          Icon(
                            Icons.arrow_right,
                            color: Colors.grey,
                          )
                        ],
                      ),
                      TextFormField(
                        controller: rupeesconverter,
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.w500),
                        decoration: InputDecoration(
                          hintText: '0.0',
                          suffixIcon: Text(
                            '₹',
                            style: TextStyle(fontSize: 20, color: Colors.grey),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(7),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.indigo,
                            spreadRadius: 1,
                            blurRadius: 2,
                          )
                        ]),
                    child: Center(
                      child: Text(
                        ' = ',
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),
                  Container(
                    height: 50,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.indigo,
                            blurRadius: 2,
                            spreadRadius: 1
                          )
                        ],
                        borderRadius: BorderRadius.circular(7),),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        children: [
                          IconButton(
                              onPressed: () {
                                setState(() {
                                  dollar = double.parse(rupeesconverter.text) * 0.0163;
                                });
                              },
                              icon: Icon(Icons.arrow_downward_outlined)),
                          Text(
                            'Switch Currencies',
                            style: TextStyle(
                                color: Colors.indigo,
                                fontSize: 17,
                                fontWeight: FontWeight.w500),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                height: 170,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.indigo.withOpacity(0.3),
                        spreadRadius: 2,
                        blurRadius: 4,
                        offset: Offset(0, 3),
                      )
                    ]),
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(5),
                            child: Image.network(
                              // country.urlFlag!,
                              'https://img.freepik.com/premium-vector/canada-national-official-flag-symbol-banner-vector-illustration_622428-3853.jpg',
                              height: 30,
                              width: 50,
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Canada',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  'Doller',
                                  // country.currency!,
                                  style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                          Icon(
                            Icons.arrow_right,
                            color: Colors.grey,
                          )
                        ],
                      ),
                      TextFormField(
                        keyboardType: TextInputType.none,
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.w500),
                        decoration: InputDecoration(
                          hintText: dollar.toString(),
                          suffixIcon: Text(
                            '\$',
                            style: TextStyle(fontSize: 20, color: Colors.grey),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
