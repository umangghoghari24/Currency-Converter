import 'package:currencyconverter/HomePage.dart';
import 'package:flutter/material.dart';

class SpleshScreen extends StatefulWidget {
  const SpleshScreen({Key? key}) : super(key: key);

  @override
  State<SpleshScreen> createState() => _SpleshScreenState();
}

class _SpleshScreenState extends State<SpleshScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Image.network('https://img.freepik.com/free-vector/e-shopping-cartoon-web-icon-online-store-cashback-service-money-returning-financial-refund-idea-return-investment-internet-income-vector-isolated-concept-metaphor-illustration_335657-2734.jpg?w=740&t=st=1708845447~exp=1708846047~hmac=c6db24227d6fd6bcd6989524484b8b2e81b3caf0e0373ef2c2debba0103131ab',
          height: MediaQuery.of(context).size.height/1.3,),
          SizedBox(
            width: 300,
            height: 50,
            child: ElevatedButton(onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Converter()));
            },
                child: Text('Next  >>>',
                  style: TextStyle(color: Colors.white,
                      fontSize: 18),),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.indigo,
              ),
            ),
          ),
          //     ext('Next'))
        ],
      ),
    );
  }
}
