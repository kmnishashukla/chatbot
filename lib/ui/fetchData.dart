import 'package:chatpot/models/product.dart';
import 'package:chatpot/service/dataapi.dart';
import 'package:flutter/material.dart';

class FetchData extends StatefulWidget {
  @override
  _FetchDataState createState() => _FetchDataState();
}

class _FetchDataState extends State<FetchData> {


  List<Product> listData;

  void getProductDataList() async{
    await getProductList().then((value) {

      setState(() {
        print(value.toString());

        listData=value;
      });
    });
  }


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  getProductDataList();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("App Fetch"),
      ),
      body: listData == null ? CircularProgressIndicator() : ListView.builder(
          physics: BouncingScrollPhysics(),
          scrollDirection: Axis.vertical,
          itemCount: listData.length,
          shrinkWrap: true,
          itemBuilder: (context, index) {
            return Text(listData[index].productName);
          }) ,
    );
  }
}
