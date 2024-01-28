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
              height: 150,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(5),
                  boxShadow: [ BoxShadow(
                    color: Colors.indigo.withOpacity(0.3),
                    spreadRadius: 2,
                    blurRadius: 4,
                    offset: Offset(0,3),
                  )]
              ),
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  children: [
                    Row(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(5),
                          child: Image.network('https://c8.alamy.com/comp/ERNY24/usa-map-in-blue-and-red-colors-ERNY24.jpg',
                          height: 30,
                            width: 50,
                          ),
                        ),
                        SizedBox(width: 10,),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('USA',style: TextStyle(
                                color: Colors.black,
                                fontSize: 17,
                                fontWeight: FontWeight.bold
                              ),),
                              Text('USD',style: TextStyle(
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
                      decoration: InputDecoration(
                        hintText: '0.0',
                        suffixIcon: Text('\$',style: TextStyle(
                          fontSize: 20,
                          color: Colors.grey
                        ),),
                        suffixIconConstraints: BoxConstraints(
                          maxWidth: 0,maxHeight: 0
                        )
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
