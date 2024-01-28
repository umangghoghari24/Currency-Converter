import 'package:flutter/material.dart';
class Converter extends StatefulWidget {
  const Converter({Key? key}) : super(key: key);

  @override
  State<Converter> createState() => _ConverterState();
}

class _ConverterState extends State<Converter> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('Currency Converter'),
        ),
      ),

      body: Padding(
        padding: const EdgeInsets.all(30),
        child: Column(
          children: [
            Container(
              height: 160,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(5),
                  boxShadow: [ BoxShadow(
                    color: Colors.indigo.withOpacity(0.3),
                    spreadRadius: 2,
                    blurRadius: 4,
                    offset: Offset(0, 3),
                  )
                  ]
              ),
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
                            'https://c8.alamy.com/comp/ERNY24/usa-map-in-blue-and-red-colors-ERNY24.jpg',
                            height: 30,
                            width: 50,
                          ),
                        ),
                        SizedBox(width: 10,),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('USA', style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold
                              ),),
                              Text('USD', style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold
                              ),),
                            ],
                          ),
                        ),
                        Icon(Icons.arrow_right,
                          color: Colors.grey,
                        )
                      ],
                    ),
                    TextFormField(
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.w500
                      ),
                      decoration: InputDecoration(
                          hintText: '0.0',
                          suffixIcon: Text('\$', style: TextStyle(
                              fontSize: 20,
                              color: Colors.grey
                          ),),
                          suffixIconConstraints: BoxConstraints(
                              maxWidth: 0, maxHeight: 0
                          )
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height: 30,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 50, width: 50,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(2),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.indigo.withOpacity(0.2),
                          spreadRadius: 2,
                          blurRadius: 5,
                          offset: Offset(0, 3),
                        )
                      ]
                  ),
                  child: Center(
                    child: Text(' = ', style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w600
                    ),),
                  ),
                ),
                Container(
                  height: 50,
                  // width: 50,
                  decoration: BoxDecoration(
                      color: Colors.indigo[50],
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(
                          color: Colors.indigo
                      )
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      children: [
                        Image.network(
                          'https://c8.alamy.com/comp/ERNY24/usa-map-in-blue-and-red-colors-ERNY24.jpg',
                          height: 30,),
                        Text('Switch Currencies', style: TextStyle(
                            color: Colors.indigo,
                            fontSize: 17,
                            fontWeight: FontWeight.w500
                        ),)
                      ],
                    ),
                  ),
                )
              ],
            ),
            SizedBox(height: 30,),
            _BuildCurrencyView(),

          ],
        ),
      ),
    );
  }

  Container _BuildCurrencyView() {
    return Container(
      height: 160,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(5),
          boxShadow: [ BoxShadow(
            color: Colors.indigo.withOpacity(0.3),
            spreadRadius: 2,
            blurRadius: 4,
            offset: Offset(0, 3),
          )
          ]
      ),
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
                    'https://c8.alamy.com/comp/ERNY24/usa-map-in-blue-and-red-colors-ERNY24.jpg',
                    height: 30,
                    width: 50,
                  ),
                ),
                SizedBox(width: 10,),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('USA', style: TextStyle(
                          color: Colors.black,
                          fontSize: 17,
                          fontWeight: FontWeight.bold
                      ),),
                      Text('USD', style: TextStyle(
                          color: Colors.grey,
                          fontSize: 15,
                          fontWeight: FontWeight.bold
                      ),),
                    ],
                  ),
                ),
                Icon(Icons.arrow_right,
                  color: Colors.grey,
                )
              ],
            ),
            TextFormField(
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w500
              ),
              decoration: InputDecoration(
                  hintText: '0.0',
                  suffixIcon: Text('\$', style: TextStyle(
                      fontSize: 20,
                      color: Colors.grey
                  ),),
                  suffixIconConstraints: BoxConstraints(
                      maxWidth: 0, maxHeight: 0
                  )
              ),
            )
          ],
        ),
      ),
    );
  }
}
